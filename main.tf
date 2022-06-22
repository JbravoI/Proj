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

  # application_insights_config = {
  #   mydemoappinsightworkspace = {
  #     application_type = "web"
  #   }
  # }
}

#Function App
module "logs" {
  source  = "./modules/appinsight"
  # version = "1.1.0"

  # client_name         = var.function_name
  # environment         = var.environment
  # stack               = var.stack
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "function_app_windows" {
  source  = "./modules/functionapp"
  # version = "1.1.0"

  location            = var.location
  resource_group_name = var.resource_group_name

  # os_type = "Windows"

  # storage_account_identity_type = "SystemAssigned"

}

#APP Appservice Plan
module "app-service" {
  source  = "./modules/appserviceplan"
  # version = "1.1.0"

  resource_group_name = var.resource_group_name.name
  
  # service_plan = {
  #   kind = "Windows"
  #   size = "P1v2"
  #   tier = "PremiumV2"
  # }

  # app_service_name       = var.appservice_name
  # enable_client_affinity = true

  # site_config = {
  # always_on                 = true
  # dotnet_framework_version  = "v2.0"
  # ftps_state                = "FtpsOnly"
  # managed_pipeline_mode     = "Integrated"
  # use_32_bit_worker_process = true
  # windows_fx_version        = "DOTNETCORE|2.1"
  # }
}