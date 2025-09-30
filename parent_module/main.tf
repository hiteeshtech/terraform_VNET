module "resource_group" {
  source              = "../child_module/resource_group"
  resource_group_name = "hiturrrg"
  location            = "centralus"
}

module "vnet" {
  source              = "../child_module/vnet"
  vnet_name           = "hituuuvnet"
  location            = "centralus"
  resource_group_name = "hiturrrg"
  depends_on          = [module.resource_group]
}