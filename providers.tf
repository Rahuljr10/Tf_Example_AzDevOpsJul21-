terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.80.0"
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
