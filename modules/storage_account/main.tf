# #Creating Virtual Network
# resource "azurerm_virtual_network" "vnet1" {
#   name                = var.vnet_name
#   address_space       = ["10.0.0.0/16"]
#   location            = var.location
#   resource_group_name = var.resource_group_name
# }

# #Creating of Subnet for Storage account
# resource "azurerm_subnet" "storagesubnet" {
#   name                 = var.subnetname
#   resource_group_name  = var.resource_group_name
#   virtual_network_name = azurerm_virtual_network.vnet1
#   address_prefixes     = ["10.0.2.0/24"]
#   service_endpoints    = ["Microsoft.Sql", "Microsoft.Storage"]
# }

# #Creating Storage account
# resource "azurerm_storage_account" "storage" {
#   name                = var.storageaccountname
#   resource_group_name = var.resource_group_name
#   location                 = var.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

#   network_rules {
#     default_action             = "allow"
#     ip_rules                   = ["100.0.0.1"]
#     virtual_network_subnet_ids = [azurerm_subnet.storagesubnet.id]
#   }

# }