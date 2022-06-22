variable "resource_name" {
    description = "name of the resource"
    default = "appinsight name"
}

variable "location" {
    description = "azure location to deploy resources"
    default = "east us"
}

variable "resource_group_name" {
    description = "name of resource group"
    default = "TwikCloud"
}

variable "application_type" {
    type = string
    description = "name of application_type"
    default = "web"
}

variable "resource_name_log" {
    description = "name of the resource"
    default = "appinsight name"
}