data "azurerm_subnet" "subnet_data" {
  name                 = "chittu_subnet1"
  virtual_network_name = "chittu_vnet3"
  resource_group_name  = "chitturg2"
}
