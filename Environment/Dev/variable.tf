variable "rg_test1" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "infra_vnet1" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = list(string)
  }))

}
variable "infra_subnet1" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}
variable "infra_nsg1" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}
variable "pip" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}
variable "infra_nic1" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string

    ip_configuration_name         = string
    subnet_id                     = string
    private_ip_address_allocation = string

  }))

}

variable "sqlsrvr1" {
  type = map(object({
    name                         = string
    resource_group_name          = string
    location                     = string
    administrator_login          = string
    administrator_login_password = string
  }))


}
variable "myslqdatabase" {
  type = map(object({
    name         = string
    server_id    = string
    collation    = string
    license_type = string

  }))
}
variable "vm1" {
  type = map(object({
    nic_name = string
    name                  = string
    resource_group_name   = string
    location              = string
    size                  = string
    admin_username        = string
    admin_password        = string
    network_interface_ids = string
  }))

}