resource "azurerm_storage_account" "storageacct" {
  name                     = var.storageaccountname
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# resource "azurerm_service_plan" "serviceplan" {
#   name                = var.service
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   os_type             = "Windows"
#   sku_name            = "Y1"
# }

resource "azurerm_app_service_plan" "serviceplan" {
  name                = var.service
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "xenon"
  is_xenon            = true

  sku {
    tier = "PremiumContainer"
    size = "PC2"
  }
}

resource "azurerm_windows_function_app" "functionapp" {
  name                = var.functionapp_name
  resource_group_name = var.resource_group_name
  location            = var.location

  storage_account_name = var.storageaccountname
  service_plan_id      = azurerm_app_service_plan.serviceplan.id

  site_config {}
}