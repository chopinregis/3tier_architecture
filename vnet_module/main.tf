# Resource Group
resource "azurerm_resource_group" "rg2" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_network_security_group" "nsg2" {
  name                = "example-security-group2"
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name
}

resource "azurerm_virtual_network" "vn2" {
  name                = "example-network2"
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.nsg2.id
  }

  tags = {
    environment = "Production"
  }
}
