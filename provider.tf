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
  subscription_id = "000-000-000"
  tenant_id       = "000-000-000"
  features {}
}
provider "azurerm" {
  alias           = "spoke"
  subscription_id = "000-000-000"
  tenant_id       = "000-000-000"
  features {}
}