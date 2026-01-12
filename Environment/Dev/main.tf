module "rg_test1" {
  source   = "../../Module/Resource_group"
  rg_test1 = var.rg_test1
}
module "infra_vnet1" {
  depends_on = [ module.rg_test1 ]
  source      = "../../Module/vnet"
  infra_vnet1 = var.infra_vnet1
}
module "infra_subnet1" {
  depends_on = [ module.infra_vnet1 ]
  source        = "../../Module/subnet"
  infra_subnet1 = var.infra_subnet1
}

module "pip" {
  depends_on = [ module.rg_test1 ]
  source = "../../Module/public_ip"
  pip    = var.pip
}
module "nsg" {
  depends_on = [ module.infra_vnet1 ]
  source     = "../../Module/nsg"
  infra_nsg1 = var.infra_nsg1
}
module "vm" {
  depends_on = [ module.infra_subnet1 ]
  source = "../../Module/vm"
  vm1    = var.vm1
}
# module "nic" {
#   depends_on = [ module.infra_subnet1 ]
#   source = "../../Module/nic"
#   infra_nic1 = var.infra_nic1
# }