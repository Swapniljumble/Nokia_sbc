variable "azurerm_virtual_network_name" {
  description = "The name of the Virtual Network."
  type        = string  
}

variable "azurerm_virtual_network_address_space" {
  description = "The address space that is used by the Virtual Network."
  type        = list(string)
}

variable "azurerm_virtual_network_location" {
  description = "The Azure location where the Virtual Network will be created."
  type        = string
}

variable "azurerm_resource_group_name" {
  description = "Name of the resource group for the virtual network"
  type        = string
}


