// Networking module placeholder

resource "azurerm_virtual_network" "this" {

  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name

  address_space = var.address_space

  tags = {
    Environment = "Dev"
    Project     = "Enterprise-AKS"
  }

}

resource "azurerm_subnet" "aks" {

  name = "snet-aks"

  resource_group_name = var.resource_group_name

  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = [
    "10.100.1.0/24"
  ]

}

resource "azurerm_subnet" "appgw" {

  name = "snet-appgw"

  resource_group_name = var.resource_group_name

  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = [
    "10.100.2.0/24"
  ]

}
resource "azurerm_subnet" "private" {

  name = "snet-private"

  resource_group_name = var.resource_group_name

  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = [
    "10.100.3.0/24"
  ]

}

resource "azurerm_subnet" "management" {

  name = "snet-management"

  resource_group_name = var.resource_group_name

  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = [
    "10.100.4.0/24"
  ]

}

