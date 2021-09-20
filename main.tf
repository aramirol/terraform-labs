terraform {
  required_version = ">= 0.12"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.76.0"
    }
  }
}

provider  "azurerm"{
    features{
    }
}

resource "azurerm_resource_group" "example"{
    name = "example-resource-group"
    location = "West Europe"
}

resource "azurerm_resource_group" "rg2"{
    name = "rg2"
    location = "West Europe"
    tags = {
      dependency = azurerm_resource_group.example.name
    }
}

resource "azurerm_resource_group" "rg3"{
    name = "rg3"
    location = "West Europe"
    depends_on = [
      azurerm_resource_group.rg2
    ]
}

output "output-example"{
    value = azurerm_resource_group.example.id
}

output "output-example-2"{
    value = azurerm_resource_group.example.name
}

variable "image_id" {
  type        = list(string)
  default = ["abc"]
}

variable "project-name"{
  type =
}

variable "docker_ports"{
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 5000
      external = 4000
      protocol = tcp
    }
  ]
}
