terraform {
  required_providers {
    azurerm = {
      version = "=1.0.10"
    }
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
