terraform {
  required_version = ">= 0.12"
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

resource "azurerm_resource_group" "labs" {
  name     = "labs"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "labs_vnet"
  location            = azurerm_resource_group.labs.location
  resource_group_name = azurerm_resource_group.labs.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  tags = {
    environment = "Production"
  }
}