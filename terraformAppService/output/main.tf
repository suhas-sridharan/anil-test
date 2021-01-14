variable "subscription_id" {
}
variable "client_id" {
}
variable "client_secret" {
}
variable "tenant_id" {
}

# Configure the Azure Provider
provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=2.4.0"
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "anil-terraform-resourceGroup-output"
  location = "West Europe"
}

output "subVar" {
  value = "${var.subscription_id}"
}

output "newRg" {
  value = "${azurerm_resource_group.main.name}"
}
