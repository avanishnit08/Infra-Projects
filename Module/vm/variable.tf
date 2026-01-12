variable "vm1" {
    type = map(object({
        name                = string
  resource_group_name = string
  location            = string
  size                = string
  admin_username      = string
  admin_password    =      string
  network_interface_ids = string
  nic_name = string
    }))
  
}

