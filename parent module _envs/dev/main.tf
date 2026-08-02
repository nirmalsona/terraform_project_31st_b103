module "rg" {

    source = "../../child module/1.azurerm_resource_group"

    rgs = var.rgs


}