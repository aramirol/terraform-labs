# terraform-labs - Lab01

In this lab we will create:
- Resource Group
- Virtual Network
- Subnet

## Deploy Output

### terraform init

```sh
➜  terraform-labs git:(main) ✗ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/azurerm versions matching "2.77.0"...
- Installing hashicorp/azurerm v2.77.0...
- Installed hashicorp/azurerm v2.77.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
➜  terraform-labs git:(main) ✗
```

### terraform plan

```sh
➜  terraform-labs git:(main) ✗ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_resource_group.labs will be created
  + resource "azurerm_resource_group" "labs" {
      + id       = (known after apply)
      + location = "westeurope"
      + name     = "labs"
    }

  # azurerm_virtual_network.vnet will be created
  + resource "azurerm_virtual_network" "vnet" {
      + address_space         = [
          + "10.0.0.0/16",
        ]
      + dns_servers           = (known after apply)
      + guid                  = (known after apply)
      + id                    = (known after apply)
      + location              = "westeurope"
      + name                  = "labs_vnet"
      + resource_group_name   = "labs"
      + subnet                = [
          + {
              + address_prefix = "10.0.1.0/24"
              + id             = (known after apply)
              + name           = "subnet1"
              + security_group = ""
            },
        ]
      + tags                  = {
          + "environment" = "Production"
        }
      + vm_protection_enabled = false
    }

Plan: 2 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
➜  terraform-labs git:(main) ✗
```

### terraform apply

```sh
➜  terraform-labs git:(main) ✗ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_resource_group.labs will be created
  + resource "azurerm_resource_group" "labs" {
      + id       = (known after apply)
      + location = "westeurope"
      + name     = "labs"
    }

  # azurerm_virtual_network.vnet will be created
  + resource "azurerm_virtual_network" "vnet" {
      + address_space         = [
          + "10.0.0.0/16",
        ]
      + dns_servers           = (known after apply)
      + guid                  = (known after apply)
      + id                    = (known after apply)
      + location              = "westeurope"
      + name                  = "labs_vnet"
      + resource_group_name   = "labs"
      + subnet                = [
          + {
              + address_prefix = "10.0.1.0/24"
              + id             = (known after apply)
              + name           = "subnet1"
              + security_group = ""
            },
        ]
      + tags                  = {
          + "environment" = "Production"
        }
      + vm_protection_enabled = false
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_resource_group.labs: Creating...
azurerm_resource_group.labs: Creation complete after 1s [id=/subscriptions/d75240fe-35b2-4509-9d60-1c08b59734e5/resourceGroups/labs]
azurerm_virtual_network.vnet: Creating...
azurerm_virtual_network.vnet: Creation complete after 6s [id=/subscriptions/d75240fe-35b2-4509-9d60-1c08b59734e5/resourceGroups/labs/providers/Microsoft.Network/virtualNetworks/labs_vnet]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
➜  terraform-labs git:(main) ✗
```

