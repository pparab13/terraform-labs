/*data "azurerm_images" "images" {
  resource_group_name = var.resource_group_name
  tags_filter = {  
    Image = "Windows2022"
  } 
}*/
/*terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.80"
    }
  }
}*/
resource "azurerm_resource_group" "RG" {
  name     = var.resource_group_name
  location = var.resource_group_location
}