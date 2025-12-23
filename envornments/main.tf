module "azurerm_resource_group" {
    source = "../modules/azurerm_resource_group"
    azurerm_resource_group_name = "infinite_rg1"
    azurerm_resource_group_location = "central india"
}
module "azurerm_resource_group" {
    source = "../modules/azurerm_resource_group"
    azurerm_resource_group_name = "infinite_rg2"
    azurerm_resource_group_location = "central india"
}
module "azurerm_resource_group" {
    source = "../modules/azurerm_resource_group"
    azurerm_resource_group_name = "infinite_rg3"
    azurerm_resource_group_location = "central india"
}

module "azurerm_resource_group" {
    source = "../modules/azurerm_resource_group"
    azurerm_resource_group_name = "infinite_rg4"
    azurerm_resource_group_location = "central india"
}

module "azurerm_virtual_network" {
    depends_on = [ module.azurerm_resource_group ]
    source = "../modules/azurerm_virtual_network"
    azurerm_virtual_network_name = "infinite_vnet1"
    azurerm_virtual_network_location = "central india"
    azurerm_virtual_network_address_space = ["10.0.0.0/16"]
    azurerm_resource_group_name = "infinite_rg1"
}


module "frontend_subnet" {
    depends_on = [ module.azurerm_virtual_network ]
    source = "../modules/azurerm_subnet"
    azurerm_subnet_name = "frontend_subnet"
    azurerm_resource_group_name = "infinite_rg1"
    azurerm_virtual_network_name = "infinite_vnet1"
    azurerm_subnet_address_prefixes = ["10.0.1.0/24"]
}

module "backend_subnet" {
    depends_on = [ module.azurerm_virtual_network ]
    source = "../modules/azurerm_subnet"
    azurerm_subnet_name = "backend_subnet"
    azurerm_resource_group_name = "infinite_rg1"
    azurerm_virtual_network_name = "infinite_vnet1"
    azurerm_subnet_address_prefixes = ["10.0.2.0/24"]
}


module "azurerm_virtual_machine" {
    source = "../modules/azurerm_virtual_machine"
    azurerm_linux_virtual_machine_admin_username = "adminuser"
    azurerm_linux_virtual_machine_name = "frontend-vm1"
    azurerm_location = "central india"
    azurerm_linux_virtual_machine_size = "Standard_B1s"
    azurerm_linux_virtual_machine_computer_name = "front_vm1"
    azurerm_linux_virtual_machine_publisher = "canonical"
    azurerm_linux_virtual_machine_offer     = "0001-com-ubuntu-pro-focal"
    azurerm_linux_virtual_machine_sku       = "pro-20_04-lts"
    azurerm_linux_virtual_machine_version   = "latest"
    username = "azureuser"
    password = "P@ssword1234"
}

module "azurerm_virtual_machine_backend" {
    source = "../modules/azurerm_virtual_machine"
    azurerm_linux_virtual_machine_admin_username = "adminuser"
    azurerm_linux_virtual_machine_name = "backend-vm1"
    azurerm_location = "central india"
    azurerm_linux_virtual_machine_size = "Standard_B1s"
    azurerm_linux_virtual_machine_computer_name = "backend_vm1"
    azurerm_linux_virtual_machine_publisher = "canonical"
    azurerm_linux_virtual_machine_offer     = "0001-com-ubuntu-pro-focal"
    azurerm_linux_virtual_machine_sku       = "pro-20_04-lts"
    azurerm_linux_virtual_machine_version   = "latest"
    username = "azureuser"
    password = "P@ssword1234"
}


# module "azurerm_sql_database" {
#   source = "../modules/azurerm_sql_database"
#   database_name = "infinite-db"
#   server_id     = module.azurerm_sql_server.sql_server_id
# }

# module "azurerm_mssql_server" {
#   source = "../modules/azurerm_sql_server"
#   azurerm_mssql_server_name = "infinite-sql-server"
#   azurerm_resource_group_name = "infinite_rg1"
#   azurerm_location = "central india"
#   azurerm_mssql_server_version = "12.0"
#   azurerm_mssql_server_administrator_login = "adminuser"
#   azurerm_mssql_server_administrator_login_password = "P@ssword1234"
# }

module "azurerm_publc_ip" {
    source = "../modules/azurerm_public_ip"
}
