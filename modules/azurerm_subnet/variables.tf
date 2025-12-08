variable "azurerm_subnet_name" {
  description = "The name of the Subnet."
  type        = string
}
variable "azurerm_resource_group_name"{
  description = "The name of the Resource Group in which to create the Subnet."
  type        = string
}

variable "azurerm_virtual_network_name" {
  description = "The name of the Virtual Network in which to create the Subnet."
  type        = string
}

variable "azurerm_subnet_address_prefixes" {
  description = "The address prefixes to use for the Subnet."
  type        = list(string)
}

