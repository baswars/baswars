resource "azurerm_resource_group" "rg" {
  name     = "rg-vm1"
  location = "East US"

}
resource "azurerm_virtual_network" "vnet" {
  name = "vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  address_space = ["10.0.0.0/16"]
  
}
resource "azurerm_subnet" "subnet1" {
  name = "subnet1"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = ["10.0.0.0/24"]
  
}
resource "azurerm_subnet" "subnet2" {
  name = "subnet2"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = ["10.0.2.0/24"]
  
}

resource "azurerm_subnet" "subnet3" {
  name = "subnet3"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = ["10.0.3.0/24"]
  
}
resource "azurerm_subnet" "bastion-host" {
  name = "AzureBastionSubnet"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = ["10.0.4.0/26"]
  
}
resource "azurerm_network_interface" "nic" {
  name                = "nic-vm1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg-vm11"
  location = "East US"

}
resource "azurerm_resource_group" "rg2" {
  name     = "rg2"
  location = "East US"

}
resource "azurerm_resource_group" "rg3" {
  name     = "rg3"
  location = "East US"

}
resource "azurerm_resource_group" "rg4" {
  name     = "rg4"
  location = "East US"

}
resource "azurerm_resource_group" "rg5" {
  name     = "rg5"
  location = "East US"

}
resource "azurerm_resource_group" "rg6" {
  name     = "rg6"
  location = "East US"

}
<<<<<<< HEAD
resource "azurerm_resource_group" "rg7" {
  name     = "rg7"
  location = "East US"

}
resource "azurerm_resource_group" "rg8" {
  name     = "rg8"
  location = "East US"

}
resource "azurerm_resource_group" "rg9" {
  name     = "rg9"
  location = "East US"

}
=======

>>>>>>> 7c64335fa5efd4e05f7a05fa875e28b244f07001
