module "dev_rg" {


  source = "../../modules/1.azurerm_resource_group"

  rgs = var.dev_rgs

}


module "dev_vnet" {

  source = "../../modules/2.azurerm_virtual_network"

  vnets = var.dev_vnets

  depends_on = [module.dev_rg]
}


module "dev_subnet" {

  source = "../../modules/3.azurerm_subnet"

  subnets = var.dev_subnet

  depends_on = [module.dev_vnet]

}



module "dev_public_ip" {


  source = "../../modules/5.public_ip"

  pips = var.dev_public_ips

  depends_on = [module.dev_rg]
}


module "dev_network_interface" {

  source = "../../modules/4.azurerm_network_interface"

  nics = var.dev_nics

  depends_on = [module.dev_subnet, module.dev_public_ip]

}


