# Lab 05

## Saving states

In this lab we are going to create the same infrastruture and save tfstate file in Azure storage.

| Resource  | Name  |
|:----------|:----------|
| Resource Group   | demo05   |
| Virtual Network    | vnet05   |
| Subnet    | subnet05    |

After first apply you have to create a `backend.tf` file to save `terraform.tfstate` in Azure:

```sh
# backend.tf
terraform {
    backend "azurerm" {
    }
}
```

Finally, use `terraform init -backend-config` to save the state in Azure.

## Procedure

Firt of all, init the folder:
```sh
$ terrafom init
```

Optional, you can generate a plan:
```sh
$ terraform plan
```

To end this lab, apply the code:
```sh
$ terraform apply
```

Save `terraform.tfstate` in Azure:
```sh
$ terraform init -backend-config=backend-config.txt
```

## Be careful!

We use a free tier at all times, but don't forget to delete the labs once they are completed and understood.
