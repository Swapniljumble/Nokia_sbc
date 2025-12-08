resource "azurerm_network_interface" "nic" {
  name                = "infinite-nic"
  location            = "central india"
  resource_group_name = "infinite_rg1"
  

  ip_configuration {
    name                          = "internal"
    subnet_id                     = "/subscriptions/328861c5-c270-40df-86f9-628accce0c5d/resourceGroups/infinite_rg1/providers/Microsoft.Network/virtualNetworks/infinite_vnet1/subnets/frontend_subnet"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_id
    primary                       = true
  }
 
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.azurerm_linux_virtual_machine_name
  location            = var.azurerm_location
  resource_group_name = "infinite_rg1"
  admin_username = var.username
  admin_password = var.password
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]
  size                = var.azurerm_linux_virtual_machine_size

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = var.azurerm_linux_virtual_machine_publisher
    offer     = var.azurerm_linux_virtual_machine_offer
    sku       = var.azurerm_linux_virtual_machine_sku
    version   = var.azurerm_linux_virtual_machine_version
  }




  tags = {
    environment = "staging"
  }
}

