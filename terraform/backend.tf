terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstate734838649" # <-- Your actual storage account
    container_name       = "tfstate"
    key                  = "enterprise-aks.tfstate"
  }
}