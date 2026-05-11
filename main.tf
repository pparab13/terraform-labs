terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  features {

  }
}

/*locals {
  prefix = "contoso"
  region = "UK South"
  tags = {
    cost_center = "contoso research"
  }
}*/
resource "azurerm_resource_group" "import-rg" {
for_each = var.resource_groups
name = each.value.name
location = each.value.location
}


resource "azurerm_management_group" "platform_mg" {
  name         = "mg1"
  display_name = "Management Group 1"
}
resource "azurerm_management_group" "landingzone_mg"{
  name         = "LandingZone"
  display_name = "LandingZone"
}
resource "azurerm_management_group" "root_tenant"{
  name         = "f4bb9ca2-1e6e-4cc1-aa2d-5d2e9519ff4a"
  display_name = "Tenant Root Group"
}


  
data "azurerm_subscriptions" "available" {
  
}
