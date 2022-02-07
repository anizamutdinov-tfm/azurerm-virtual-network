### Terraform repository for module azurerm_virtual_network

Author: Artur

Required terraform version: >=0.12.31

#### Examples:

```
locals {
  location    = "westeurope"
  environment = "test"
  module      = "app-007"
  slot        = "shared"
}

module "rg" {
  source      = "git@github.com:anizamutdinov-tfm/azurerm-resource-group.git"
  location    = local.location
  environment = local.environment
  module      = local.module
  slot        = local.slot
  custom_tags = { special_tag = "special_value" }
}

module "vnet" {
  source              = "git@github.com:anizamutdinov-tfm/azurerm-virtual-network.git"
  resource_group_name = module.rg.resource_group_name
  environment         = local.environment
  module              = local.module
  slot                = local.slot
  vnet_cidr           = ["172.16.0.0/27", "10.16.0.0/14"]
  custom_tags         = { special_tag = "special_value" }
}
```
