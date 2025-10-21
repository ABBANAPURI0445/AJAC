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
}

####RG##### 
resource "azurerm_resource_group" "rg" {
  name     = "dev-practiceazure-east1-rg"
  location = "East US"
}
######### 

