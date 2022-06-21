# Cluster Resource Group

resource "azurerm_resource_group" "resource_group_name" {
  name     = var.resource_group_name
  location = var.location
}


# AKS Log Analytics

module "log_analytics" {
  source                           = "./modules/appinsight"
  resource_group_name              = azurerm_resource_group.aks.name
  log_analytics_workspace_location = var.log_analytics_workspace_location
  log_analytics_workspace_name     = var.log_analytics_workspace_name
  log_analytics_workspace_sku      = var.log_analytics_workspace_sku
}
