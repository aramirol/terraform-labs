# Lab 02

## Modifying first lab

In this lab we will deploy the same infrastruture as the first lab but using variables and outputs:

| Resource  | Name  |
|:----------|:----------|
| Resource Group   | demo02   |
| Virtual Network    | vnet02   |
| Subnet    | subnet02    |

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

## Be careful!

We use a free tier at all times, but don't forget to delete the labs once they are completed and understood.
