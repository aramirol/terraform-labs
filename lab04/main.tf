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

resource "azurerm_resource_group" "demo04" {
  location = var.rg_location
  name = var.rg_name
}

module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "2.5.0"
  # insert the 2 required variables here
  resource_group_name = var.rg_name
  vnet_name = var.vnet_name
  address_space = [var.vnet_cidr_range]
  subnet_prefixes = var.subnet_prefixes
  subnet_names = var.subnet_names
  tags = {
    environment = "dev"
  }

  depends_on = [azurerm_resource_group.demo04]
}