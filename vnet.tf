resource "azurerm_virtual_network" "vnet" {
  name = "vnet"
  address_space = [" 10.1.0.0/16 "]
  resource_group_name = azurerm_resource_group.rg1.name
  location = azurerm_resource_group.rg1.location
}



resource "azurerm_subnet" "subnet" {
  name                 = "sun"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.1.1.0/24"]
}