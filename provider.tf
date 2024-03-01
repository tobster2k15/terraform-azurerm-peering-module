terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = ">= 2.0"
      configuration_aliases = [azurerm.spoke, azurerm.hub]
    }
  }
}

provider "azurerm" {
  alias           = "hub"
  features {}
}
provider "azurerm" {
  alias           = "spoke"
  features {}
}