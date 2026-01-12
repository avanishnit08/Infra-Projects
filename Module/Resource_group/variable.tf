variable "rg_test1" {
    type = map(object({
      name = string
      location = string
    }))
}