rg_test1 = {
  "Infra_rg1" = {
    name     = "chitturg2"
    location = "Australia East"

  }
}
infra_vnet1 = {
  "vnet1" = {
    name                = "chittu_vnet3"
    location            = "Australia East"
    resource_group_name = "chitturg2"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]

  }
}
infra_subnet1 = {
  "subnet1" = {
    name                 = "chittu_subnet1"
    resource_group_name  = "chitturg2"
    virtual_network_name = "chittu_vnet3"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
infra_nsg1 = {
  nsg1 = {
    name                = "chittu_nsg2"
    location            = "Australia East"
    resource_group_name = "chitturg2"
  }
}
pip = {
  "pip" = {
    name                = "chittu_pip3"
    resource_group_name = "chitturg2"
    location            = "Australia East"
    allocation_method   = "Static"

  }
}
infra_nic1 = {
  "nic1" = {
    name                = "chittunic2"
    location            = "Australia East"
    resource_group_name = "chitturg2"

    ip_configuration_name         = "internal"
    subnet_id                     = "/subscriptions/2d56d9b3-4522-4609-bac1-d4af7eea379e/resourceGroups/chitturg2/providers/Microsoft.Network/virtualNetworks/chittu_vnet2/subnets/chittu_subnet2"
    private_ip_address_allocation = "Dynamic"
  }
}



sqlsrvr1 = {
  sqlsrvr1 = {
    name                         = "chittu_sqlsvr2"
    resource_group_name          = "chitturg2"
    location                     = "Australia East"
    administrator_login          = "avanish"
    administrator_login_password = "december2025"
  }
}

myslqdatabase = {
  myslqdatabase = {
    name         = "chittu_database"
    server_id    = "/subscriptions/2d56d9b3-4522-4609-bac1-d4af7eea379e/resourceGroups/chitturg2/providers/Microsoft.Network/mssql_server/chittu_sqlsvr1"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"

  }
}
vm1 = {
  vm1 = {
    nic_name = "nicinfra"
    name                  = "chittuvm2"
    resource_group_name   = "chitturg2"
    location              = "Australia East"
    size                  = "Standard_D2s_v3"
    availability_zone     = "3"
    admin_username        = "avanish"
    admin_password        = "December@2025"
    network_interface_ids = "/subscriptions/2d56d9b3-4522-4609-bac1-d4af7eea379e/resourceGroups/chitturg2/providers/Microsoft.Network/networkInterfaces/chittunic1"
  }

}