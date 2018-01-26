# terraform backed settings: https://www.terraform.io/docs/backends/config.html
# we're using azurerm back in terraform.tf

variable "backend_storage_account_name" {}
variable "backend_container_name" {}
variable "backend_key" {}

variable "resource_group_name" {}
variable "location" {}