resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = var.resource_name_log
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_application_insights" "appinsights" {
  name                = var.resource_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_type
}

