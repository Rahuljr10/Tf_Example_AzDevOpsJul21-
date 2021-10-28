 terraform {
  required_providers {
    azurerm = "0.12.31"
  }
}
provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "tf-rg"
    storage_account_name = "azexampleseptdemo"
    container_name       = "tfstatedemo"
    key                  = "terraform.tfstate"
  }
}
