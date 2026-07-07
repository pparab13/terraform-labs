terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.80"

    }

  }
}

provider "azurerm" {

  features {

  }
}
provider "azurerm" {
  alias = "prod"
  subscription_id = "a931b7f4-ef53-49a2-b0ed-665640fc69b2"
  features {
    
  }
}