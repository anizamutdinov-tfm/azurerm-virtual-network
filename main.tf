data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  name                = join("-", ["vnet", local.name_template])
  address_space       = var.vnet_cidr
  tags                = merge(local.tags, var.custom_tags)
}
