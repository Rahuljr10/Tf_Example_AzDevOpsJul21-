resource "azurerm_resource_group" "example0" {
  name     = "tf-rg"
  location = "East US2"
}

resource "azurerm_storage_account" "example" {
  name                     = "azexampleseptdemo"
  resource_group_name      = azurerm_resource_group.example0.name
  location                 = azurerm_resource_group.example0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "tfstatedemo"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}
