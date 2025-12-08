resource "azurerm_public_ip" "pip" {
  name                = "infinite-pip"
  location            = "central india"
  resource_group_name = "infinite_rg1"
  allocation_method   = "Static"
  public_ip_prefix_id = "/subscriptions/328861c5-c270-40df-86f9-628accce0c5d/resourceGroups/infinite_rg1/providers/Microsoft.Network/publicIPAddresses/infinite-pip"
}


resource "azurerm_backenr_public_ip" "pip" {
  name                = "backend-pip"
  location            = "central india"
  resource_group_name = "infinite_rg1"
  allocation_method   = "Static"
  public_ip_prefix_id = "/subscriptions/328861c5-c270-40df-86f9-628accce0c5d/resourceGroups/infinite_rg1/providers/Microsoft.Network/publicIPAddresses/infinite-pip"
}