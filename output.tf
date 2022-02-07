output "virtual_network_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "Virtual network name"
}

output "virtual_network_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "Virtual network id"
}

output "virtual_network_cidr" {
  value       = azurerm_virtual_network.vnet.address_space
  description = "Virtual network address spaces"
}