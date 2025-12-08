terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
}

provider "azurerm" {
  features {}  
  subscription_id = "328861c5-c270-40df-86f9-628accce0c5d"
}