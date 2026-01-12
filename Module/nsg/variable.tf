variable "infra_nsg1" {
    type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  
  }))
}
    
