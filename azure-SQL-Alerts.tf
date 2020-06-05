resource "azurerm_monitor_action_group" "main" {
  name                = "alert-actiongroup"
  resource_group_name = "cache-poc"
  short_name          = "Alerts-triggers"

  email_receiver {
    name                    = "Alerts group"
    email_address           = "52@techmahindra.com"
    use_common_alert_schema = true
  }
}


data "azurerm_sql_database" "example" {
  name                = "testDB"
  server_name         = "testdb-server-jino"
  resource_group_name = "cache-poc"
}

locals {
  metricnames = ["memory_percent", "cpu_percent", "io_consumption_percent", "storage_percent", ""]
}

resource "azurerm_monitor_metric_alert" "example" {
  count               = length(local.storage_percent)
  name                = "SQL-ALERTS-${count.index + 1}"
  resource_group_name = "cache-poc"
  scopes              = [data.azurerm_sql_database.example.id]
  description         = "warning - ${data.azurerm_sql_database.example.resource_group_name} - ${data.azurerm_sql_database.example.name} - 50% element(local.storage_percent, count.index) used! "
  frequency           = "PT1M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = element(local.storage_percent, count.index)
    aggregation      = "Maximum"
    operator         = "GreaterThan"
    threshold        = 50

  }

  action {
    action_group_id = azurerm_monitor_action_group.main.id
  }
}



# https://docs.microsoft.com/en-us/azure/azure-monitor/platform/metrics-supported
