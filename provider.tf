terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
 backend "azurerm" {
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = ""

  }
}

provider "azurerm" {
  features {}
  subscription_id = "e05d12f7-07a5-4237-b6f6-c1e092965136"
}
