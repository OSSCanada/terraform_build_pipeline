# terraform backed settings: https://www.terraform.io/docs/backends/config.html
# we're using azurerm back in terraform.tf

variable "SUBSCRIPTION_ID" {}
variable "SERVICE_PRINCIPAL_ID" {}
variable "SERVICE_PRINCIPAL_SECRET" {}
variable "TENANT_ID" {}
variable "resource_group_name" {}
variable "location" {}