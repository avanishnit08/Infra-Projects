variable "infra_vnet1" {
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      address_space = list(string)
      dns_servers = list(string)
    }))
  
}