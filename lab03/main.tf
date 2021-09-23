terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.77.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features{}
}

resource "azurerm_resource_group" "demo03" {
  location = var.rg_location
  name = var.rg_name
}

module "vnet03" {
  source = "./modules/az_networking"
  rg_location = azurerm_resource_group.demo03.location
  rg_name = azurerm_resource_group.demo03.name
  vnet_name = var.vnet_name
}