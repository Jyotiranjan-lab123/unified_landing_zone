terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "4.47.0"
        }
    }
    backend "azurerm" {
        resource_group_name   = "jyotirg"
        storage_account_name  = "jyotistg"
        container_name        = "jyoticnt"
        key                   = "dev.terraform.tfstate"
      
    }
    
}   
provider "azurerm" {
    features {}
    subscription_id = "a4103c11-dd30-480e-aa10-f78d73acbc66"
}