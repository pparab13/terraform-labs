resource "azurerm_resource_group" "RG" {
  name = "rg01"
  location = "eastus2"
  lifecycle {
    prevent_destroy = true
  }
}

module "storage" {
  source = "./Modules/Storage"

}

output "naaccessme" {
  value = module.storage.access_key
  sensitive = true
}
