# Cluster Resource Group

resource "azurerm_resource_group" "resource_group_name" {
  name     = var.resource_group_name
  location = var.location
}


# App Insight
module "application-insights" {
  source  =  "./modules/appinsight"
  # version = "1.1.0"

  resource_group_name = var.resource_group_name

}

#Function App
module "logs" {
  source  = "./modules/appinsight"
  # version = "1.1.0"

  location            = var.location
  resource_group_name = var.resource_group_name
}

module "function_app" {
  source  = "./modules/functionapp2"
  # version = "1.1.0"

  location            = var.location
  resource_group_name = var.resource_group_name
  # for_app     = module.app-service.appservice_id.id
  # os_type = "Windows"

  # storage_account_identity_type = "SystemAssigned"

}

#APP Appservice Plan
# module "app-service" {
#   source  = "./modules/appserviceplan"
#   # version = "1.1.0"

#   resource_group_name = var.resource_group_name.name
 
# }