terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.53.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "Infra_backup"
    storage_account_name = "myinfrastrg8"
    container_name = "infracontainer"
    key = "infra.tfstate" 
  }
}

provider "azurerm" {
  features {
     resource_group {
     prevent_deletion_if_contains_resources = false 
     }
  }
  subscription_id = "2d56d9b3-4522-4609-bac1-d4af7eea379e"
}
