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

resource "azurerm_resource_group" "maneesh28" {
  name     = "rg-chiku24"
  location = "East US"
}


# Explict dependency

resource "azurerm_storage_account" "stgtutu2026" {
  name                     = "stgexplicit"
  depends_on               = [azurerm_resource_group.maneesh28]
  resource_group_name      = "rg-chiku24"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
