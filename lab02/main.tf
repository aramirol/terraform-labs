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

resource "azurerm_resource_group" "demo02" {
  location = var.rg_location
  name = var.rg_nme
}

resource "azurerm_virtual_network" "vnet02" {
  address_space = ["10.0.0.0/16"]
  location = azurerm_resource_group.demo02.location
  name = "subnet02" 
  resource_group_name = azurerm_resource_group.demo02.name
  tags = {
    environment = "Production"
  }
}
