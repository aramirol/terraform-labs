# Lab 06

## Apply basic infrastructure

In this lab we are going to create the same infrastruture and save tfstate file in Azure storage.

| Resource  | Name  |
|:----------|:----------|
| Resource Group   | demo06   |
| Virtual Network    | vnet06   |
| Subnet    | subnet06    |

## Examples

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

## Be careful!

We use a free tier at all times, but don't forget to delete the labs once they are completed and understood.
