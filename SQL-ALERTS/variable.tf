variable "mailRegister" {
  default = ["jj00674352@techmahindra.com","ss00454796@techmahindra.com"]
}

variable "resource_group_name" {
  default = "test"
}

variable "server_name" {
  type = string
  description = "This is SQL server name"
  default = "qwernode"
}

variable "azurerm_sql_database" {
  type = string
  default = "qwer"
  description = "SQL DB name"
}