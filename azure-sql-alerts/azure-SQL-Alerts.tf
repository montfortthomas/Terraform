provider "azurerm" {
  version = "=2.0.0"
    features {}
}

data "azurerm_sql_database" "example" {
  name                = "testDB"
  server_name         = "jinotestsqlserver"
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
  metricnames = ["cpu_percent", "storage_percent"]
}

resource "azurerm_monitor_metric_alert" "example" {
  count               = length(local.metricnames)
  name                = "SQL-ALERTS-${count.index + 1}"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_sql_database.example.id]
  description         = "warning - ${data.azurerm_sql_database.example.resource_group_name} - ${data.azurerm_sql_database.example.name} - 50% element(local.storage_percent, count.index) used! "
  frequency           = "PT1M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = element(local.metricnames, count.index)
    aggregation      = "Maximum"
    operator         = "GreaterThan"
    threshold        = 50
  }
dynamic "action" {
  iterator = pub
  for_each = azurerm_monitor_action_group.main
  content {
    action_group_id =pub.value.id
  }
}
}

variable "mailRegister" {
  default = ["jjino@mail.com","jinojoe@hot.com"]
}

variable "resource_group_name" {
  default = "test"
}


# https://github.com/hashicorp/terraform-guides/tree/master/infrastructure-as-code/terraform-0.12-examples
# https://docs.microsoft.com/en-us/azure/azure-monitor/platform/metrics-supported
