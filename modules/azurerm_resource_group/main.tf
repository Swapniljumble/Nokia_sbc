resource "azurerm_resource_group" "rg" {
    name     = var.azurerm_resource_group_name
    location = var.azurerm_resource_group_location
}

resource "azurerm_resource_group" "rg_2" {
    name     = var.azurerm_resource_group_name
    location = var.azurerm_resource_group_location
}
