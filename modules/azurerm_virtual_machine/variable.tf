variable "azurerm_linux_virtual_machine_name" {
  description = "The name of the Linux Virtual Machine."
  type        = string

  
}

variable "azurerm_location" {
  description = "The Azure location where the Linux Virtual Machine will be created."
  type        = string

}

variable "azurerm_linux_virtual_machine_size" {
  description = "The size of the Linux Virtual Machine."
  type        = string

}

variable "azurerm_linux_virtual_machine_publisher" {
  description = "The publisher of the Linux Virtual Machine image."
  type        = string

}

variable "azurerm_linux_virtual_machine_offer" {
  description = "The offer of the Linux Virtual Machine image."
  type        = string
  
}

variable "azurerm_linux_virtual_machine_sku" {
    description = "The SKU of the Linux Virtual Machine image."
    type        = string
  
}

variable "azurerm_linux_virtual_machine_version" {
  description = "The version of the Linux Virtual Machine image."
  type        = string

}
variable "azurerm_linux_virtual_machine_computer_name" {
    description = "The computer name of the Linux Virtual Machine."
    type        = string
  
}

variable "azurerm_linux_virtual_machine_admin_username" {
    description = "The admin name of the Linux Virtual Machine."
    type        = string
  
}

variable "username" {
  description = "The admin username for the Linux Virtual Machine."
  type        = string
}

variable "password" {
  description = "The admin password for the Linux Virtual Machine."
  type        = string
}


variable "public_id" {
  description = "The ID of the public IP address to associate with the network interface."
  type        = string
}