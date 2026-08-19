terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "5c3d9ee6-888f-46bc-b424-02959bb9f125"
}

resource "azurerm_resource_group" "maneesh" {
  name     = "rg-chiku24"
  location = "East US"
}

resource "azurerm_resource_group" "maneesh24" {
  name     = "rg-chiku25"
  location = "East US"
}


resource "azurerm_storage_account" "stgtutu" {
  name                     = "stgnewmaneesh223"
  resource_group_name      = azurerm_resource_group.maneesh.name   #implicit denedency
  location                 = azurerm_resource_group.maneesh.location  #implicit dependency
  account_tier             = "Standard"
  account_replication_type = "LRS"

}