resource "azurerm_virtual_network" "vnets" {
  name                = var.vnet_name
  address_space       = var.addressspace
  location            = var.location
  resource_group_name = var.resourcegroup
  subnet {
    name             = var.subnet_name
    address_prefixes = var.subnet_prefix
  }

}
