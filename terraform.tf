# terraform {
#   backend "azurerm" {
#     storage_account_name = "${var.backend_storage_account_name}"
#     container_name       = "${var.backend_container_name}"
#     key                  = "${var.backend_key}"
#   }
# }
## THIS WILL NOT WORK - terraform.backend: configuration cannot contain interpolations
#
# The backend configuration is loaded by Terraform extremely early, before
# the core of Terraform can be initialized. This is necessary because the backend
# dictates the behavior of that core. The core is what handles interpolation
# processing. Because of this, interpolations cannot be used in backend
# configuration.
#
# If you'd like to parameterize backend configuration, we recommend using
# partial configuration with the "-backend-config" flag to "terraform init".
#
# see: https://www.terraform.io/docs/backends/config.html#partial-configuration 
#

provider "azurerm" {
  subscription_id = "..."
  client_id       = "..."
  client_secret   = "..."
  tenant_id       = "..."
}

terraform {
  backend "azurerm"{}
}

resource "azurerm_resource_group" "test" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"

  tags {
    environment = "terraformtest"
  }
}

