variable "resource_group" {
  default = "woolf"
}

variable "location" {
  default = "east us"
}


variable "virtual_networks" {
  default = "10.0.0.0/16"
}

variable "subnet_count" {
  default = 2
}

variable "tags" {
  type = map
  default = {
    stage    = "development"
    resource = "terraform"
  }
}

variable "ingress_ports" {
  # type = list(number)
  default = [22, 3389]
}

variable "bastion_ports" {
  # type = list(number)
  default = [443]
}

variable "username" {
  default = "nodeuser"
}

variable "password" {
  default = "Password@123"
}


# hard code by ubunutu server

variable "sku" {
  default = "18.04-LTS"
}