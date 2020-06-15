data "azurerm_resource_group" "tf" {
    name = var.resource_group_name
}

data "azurerm_sql_database" "tf" {
  name                = var.azurerm_sql_database
  server_name         = var.server_name
  resource_group_name = data.azurerm_resource_group.tf.name
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
  metrics = ["cpu_percent", "storage_percent", "dtu_consumption_percent", "workers_percent", "sessions_percent", "physical_data_read_percent"]
}

resource "azurerm_monitor_metric_alert" "tf-warning" {
  count               = length(local.metrics)
  name                = "WARNING-SQL-ALERTS-${count.index + 1}"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_sql_database.tf.id]
  description         = "WARNING!!! - ${data.azurerm_sql_database.tf.resource_group_name} - ${data.azurerm_sql_database.tf.name} - 50% used! "
  frequency           = "PT1M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = element(local.metrics, count.index)
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 70
  }
  
dynamic "action" {
  iterator = actions
  for_each = azurerm_monitor_action_group.main
  content {
    action_group_id = actions.value.id
    }
  }
}


resource "azurerm_monitor_metric_alert" "tf-high" {
  count               = length(local.metrics)
  name                = "HIGH-SQL-ALERTS-${count.index + 1}"
  resource_group_name = var.resource_group_name
  scopes              = [data.azurerm_sql_database.tf.id]
  description         = "WARNING!!! - Resource Group - ${data.azurerm_sql_database.tf.resource_group_name}, SQL DB - ${data.azurerm_sql_database.tf.name} - 50% used! "
  frequency           = "PT1M"

  criteria {
    metric_namespace = "Microsoft.Sql/servers/databases"
    metric_name      = element(local.metrics, count.index)
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 85
  }
  
dynamic "action" {
  iterator = actions
  for_each = azurerm_monitor_action_group.main
  content {
    action_group_id = actions.value.id
    }
  }
}








# https://github.com/hashicorp/terraform-guides/tree/master/infrastructure-as-code/terraform-0.12-tfs
# https://docs.microsoft.com/en-us/azure/azure-monitor/platform/metrics-supported