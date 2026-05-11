import {
  to = azurerm_management_group.platform_mg
  id = "/providers/Microsoft.Management/managementGroups/mg1"
}
import {
  to = azurerm_management_group.landingzone_mg
  id = "/providers/Microsoft.Management/managementGroups/LandingZone"
}
import {
  to = azurerm_management_group.root_tenant
  id = "/providers/Microsoft.Management/managementGroups/f4bb9ca2-1e6e-4cc1-aa2d-5d2e9519ff4a"
}
import {
  to = azurerm_resource_group.import-rg["rg1"]
  id = "/subscriptions/6b2ddb32-a9d8-4b40-8a12-896529635788/resourceGroups/Dev-rg1"
}
import {
  to = azurerm_resource_group.import-rg["rg2"]
  id = "/subscriptions/6b2ddb32-a9d8-4b40-8a12-896529635788/resourceGroups/Dev-rg2"
}
import {
  to = azurerm_resource_group.import-rg["rg3"]
  id = "/subscriptions/ad5266ab-2faa-460c-aefa-9e97e7638764/resourceGroups/Hub-rg"
}
import {
  to = azurerm_resource_group.import-rg["rg4"]
  id = "/subscriptions/e0958c94-cf38-411c-a3b1-28fa1042c2df/resourceGroups/on-premise-rg"
}
import {
    to = azurerm_resource_group.import-rg["rg5"]
    id = "/subscriptions/a931b7f4-ef53-49a2-b0ed-665640fc69b2/resourceGroups/Prod-rg1"
}
import {
  to = azurerm_resource_group.import-rg["rg6"]
  id = "/subscriptions/a931b7f4-ef53-49a2-b0ed-665640fc69b2/resourceGroups/Prod-rg2"
}