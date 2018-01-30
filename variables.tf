# terraform backed settings: https://www.terraform.io/docs/backends/config.html
# we're using azurerm back in terraform.tf

variable "AZ_SUBSCRIPTION_ID" {}
variable "AZ_SERVICE_PRINCIPAL_ID" {}
variable "AZ_SERVICE_PRINCIPAL_SECRET" {}
variable "AZ_TENANT_ID" {}
variable "resource_group_name" {}
variable "location" {}