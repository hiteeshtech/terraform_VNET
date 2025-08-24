terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "99c7c7ea-a267-488b-9d38-a2547f06712c"
}

resource "azurerm_resource_group" "rg" {
  name     = "hiturrg"
  location = "West Europe"
}

resource "azurerm_virtual_network" "VNET" {
  name                = "hituvnet"
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}