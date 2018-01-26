terraform {
  backend "azurerm" {
    storage_account_name = "${var.backend_storage_account_name}"
    container_name       = "${var.backend_container_name}"
    key                  = "${var.backend_key}"
  }
}

resource "azurerm_resource_group" "vmss" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"

  tags {
    environment = "codelab"
  }
}

