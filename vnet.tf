resource "azurerm_virtual_network" "vnet" {
  name = "vnet"
  address_space = [" 10.1.0.0/16 "]
  resource_group_name = azurerm_resource_group.rg1.name
  location = azurerm_resource_group.rg1.location
}