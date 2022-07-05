# resource "azurerm_app_service_plan" "appserviceplan" {
#   name                = var.appservice_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   kind                = var.application_type

#   sku {
#     tier = "Dynamic"
#     size = "Y1"
#   }
# }