variable "appservice_name" {
    description = "name of the resource"
    default = "api-appserviceplan"
}

# refer https://azure.microsoft.com/en-us/global-infrastructure/services/?products=app-service&regions=all
variable "location" {
    description = "azure location to deploy resources"
    default = "east us"
}

variable "resource_group_name" {
    description = "name of resource group"
    default = "TwikCloud"
}

variable "application_type" {
    description = "name of application_kind"
    default = "FunctionApp"
}