provider "azurerm" {
  version = "=2.5.0"
  features {}
}


resource "azurerm_resource_group" "tf" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_virtual_network" "tf" {
  name                = "${azurerm_resource_group.tf.name}-vnet"
  address_space       = [var.virtual_networks]
  location            = azurerm_resource_group.tf.location
  resource_group_name = azurerm_resource_group.tf.name
  tags                = var.tags
}

resource "azurerm_subnet" "tf" {
  count                = var.subnet_count
  name                 = count.index == 0 ? "AzureBastionSubnet" : "${azurerm_virtual_network.tf.name}-subnet-${count.index + 1}"
  resource_group_name  = azurerm_resource_group.tf.name
  virtual_network_name = azurerm_virtual_network.tf.name
  address_prefix       = cidrsubnet(var.virtual_networks, 8, count.index + 1)
}

resource "azurerm_public_ip" "tf" {
  name                = "Bastionip"
  resource_group_name = azurerm_resource_group.tf.name
  location            = azurerm_resource_group.tf.location
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = var.tags
}

resource "azurerm_bastion_host" "tf" {
  name                = "bastion-server"
  location            = azurerm_resource_group.tf.location
  resource_group_name = azurerm_resource_group.tf.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.tf[0].id
    public_ip_address_id = azurerm_public_ip.tf.id
  }
}


resource "azurerm_network_security_group" "tf" {
  name                = "Baston_NSG"
  location            = azurerm_resource_group.tf.location
  resource_group_name = azurerm_resource_group.tf.name
  tags                = var.tags
  security_rule {
    name                       = "InMainRule_1"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "GatewayManager"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "InMainRule_2"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "OutMainRule_1"
    priority                   = 1000
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "AzureCloud"
  }
  security_rule {
    name                       = "OutMainRule_2"
    priority                   = 1001
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_ranges    = ["22", "3389"]
    source_address_prefix      = "*"
    destination_address_prefix = "VirtualNetwork"
  }

}


resource "azurerm_subnet_network_security_group_association" "tf" {
  subnet_id                 = azurerm_subnet.tf[0].id
  network_security_group_id = azurerm_network_security_group.tf.id
}


resource "azurerm_network_security_group" "tfone" {
  name                = "vm-nsg"
  location            = azurerm_resource_group.tf.location
  resource_group_name = azurerm_resource_group.tf.name

  security_rule {
    name                       = "Allow-All-virtualNetwork"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "VirtualNetwork"
    destination_address_prefix = "*"
  }

}


resource "azurerm_subnet_network_security_group_association" "tfone" {
  subnet_id                 = azurerm_subnet.tf[1].id
  network_security_group_id = azurerm_network_security_group.tfone.id
}


resource "azurerm_network_interface" "tf" {
  count               = 1
  name                = "vm-nic"
  location            = azurerm_resource_group.tf.location
  resource_group_name = azurerm_resource_group.tf.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.tf[1].id
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_managed_disk" "tf" {
  count                = 1
  name                 = "vm-machine-${count.index}"
  location             = azurerm_resource_group.tf.location
  resource_group_name  = azurerm_resource_group.tf.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "100"
  tags                 = var.tags

}


resource "azurerm_virtual_machine" "tf" {
  count                            = 1
  name                             = "vm-machine-${count.index}"
  location                         = azurerm_resource_group.tf.location
  resource_group_name              = azurerm_resource_group.tf.name
  network_interface_ids            = [element(azurerm_network_interface.tf.*.id, count.index)]
  vm_size                          = "Standard_DS1_v2"
  delete_os_disk_on_termination    = false # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_data_disks_on_termination = false # Uncomment this line to delete the data disks automatically when deleting the VM


  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = var.sku
    version   = "latest"
  }

  storage_os_disk {
    name              = "vm-machine-${count.index}-os-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }


  storage_data_disk {
    name            = element(azurerm_managed_disk.tf.*.name, count.index)
    managed_disk_id = element(azurerm_managed_disk.tf.*.id, count.index)
    create_option   = "Attach"
    lun             = 0
    disk_size_gb    = element(azurerm_managed_disk.tf.*.disk_size_gb, count.index)
  }

  os_profile {
    computer_name  = "vm-machine-${count.index}"
    admin_username = var.username
    admin_password = var.password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = var.tags
}


# graphviz -> terraform graph | dot -Tsvg > graph.svg


# bug: https://github.com/terraform-providers/terraform-provider-azurerm/issues/5232
# https://docs.microsoft.com/en-us/azure/developer/terraform/create-linux-virtual-machine-with-infrastructure
# https://www.reimling.eu/2020/01/azure-bastion-how-to-secure-access-azure-vms-via-ssh-rdp-without-public-ip-or-jumphosts/
