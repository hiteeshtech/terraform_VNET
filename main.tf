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
  subscription_id = "f96f2e3b-2cc8-4e5e-8ed9-4afb664bb5a8"
}

resource "azurerm_resource_group" "rg" {
  name     = "hiturrg"
  location = "West Europe"
}

resource "azurerm_virtual_network" "VNET" {
  name                = "hituvnet"
  location            = "West Europe"
  resource_group_name = "hiturrg"
  address_space       = ["10.0.0.0/16"]
}