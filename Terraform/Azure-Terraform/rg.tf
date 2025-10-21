terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}
provider "azurerm" {
  features {}
  ## default Az login
}
resource "azurerm_resource_group" "rgvm" {
  name     = "dev-azureterraformpractice-rg"
  location = "East US"
}