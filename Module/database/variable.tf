
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