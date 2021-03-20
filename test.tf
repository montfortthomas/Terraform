terraform {
  required_version = ">= 0.12.0"
}

provider "azurerm" {
  version = "=2.5.0"
  features {}
}

data "azurerm_sql_database" "example" {
  name                = var.SQLDB
  server_name         = var.SQLServer
  resource_group_name = var.resource_group_name
}

resource "azurerm_monitor_action_group" "main" {
  count               = length(var.mailRegister)
  name                = "alert-actiongroup-${count.index + 1}"
  resource_group_name = var.resource_group_name
  short_name          = "Alert-tr-${count.index + 1}"

  email_receiver {
    name                    = "Alerts group"
    email_address           = element(var.mailRegister, count.index)
    use_common_alert_schema = true
  }
}

locals {
  metricnames = [
  "cpu_percent", 
  "storage_percent", 
  "dtu_consumption_percent", 
  "storage_percent",
  "workers_percent", 
  "sessions_percent"
  ]
}

resource "azurerm_monitor_metric_alert" "example" {
  count               = length(local.metricnames)
  name                = "SQL-ALERTS-${count.index + 1}"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_sql_database.example.id]
  description         = "Warning - ${data.azurerm_sql_database.example.resource_group_name} - ${data.azurerm_sql_database.example.name} - 50% element(local.storage_percent, count.index) used! "
  frequency           = "PT5M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = element(local.metricnames, count.index)
    aggregation      = local.metricnames == "count" ? "Count"  : "Maximum"
    operator         = "GreaterThan"
    threshold        = 50
  }
  dynamic "action" {
    iterator = actionGroup
    for_each = azurerm_monitor_action_group.main
    content {
      action_group_id = actionGroup.value.id
    }
  }
}

variable "mailRegister" {
  default = ["jjino@protonmail.com", "jinojoe@gmail.com"]
}

variable "resource_group_name" {
  default = "test"
}

variable "SQLDB" {
  default = "testDB"
}

variable "SQLServer" {
  default = "jinotestsqlserver"
}

#https://github.com/hashicorp/terraform-guides/tree/master/infrastructure-as-code/terraform-0.12-examples
