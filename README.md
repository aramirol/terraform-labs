# terraform-labs

![](https://img.shields.io/badge/terraform-v1.0.6-blueviolet?logo=terraform)
![](https://img.shields.io/badge/azure-v2.78.0-blue?logo=microsoftazure)

<img src="images/terraform_logo.png" width="30%" />

Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services. Terraform codifies cloud APIs into declarative configuration files.

## Installation

First, install `terraform` easily with a package manager like `brew`: 

```sh
$ brew upgrade && brew install terraform
```

Since these labs are designed to run on Azure, you must install the `azure cli` command line tool.

```sh
$ brew upgrade && brew install azure-cli
```

## Example

To install `Azure provider`, copy and paste this code into your Terraform configuration. Then, run `terraform init`.

**Terraform 0.13+**

```sh
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.78.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}
```

## License

MIT License

See [LICENSE](https://github.com/aramirol/terraform-labs/blob/main/LICENSE) to see the full text.

