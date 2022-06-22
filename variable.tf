
variable "resource_group_name" {
  description = "name of resource group"
  default     = "TwikCloud"
}


variable location {
  description = "azure location to deploy resources"
  default     = "eastus"
}

variable "client_name" {
  description = "client name for log analytics"
  default = "TwikCloud_functionapp"
}

variable "appservice_name" {
    description = "name of the resource"
    default = "api-appserviceplan"
}

variable "function_name" {
  description = "client name for log analytics"
  default = "TwikCloud_functionapp"
}