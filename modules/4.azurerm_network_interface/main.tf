data "azurerm_subnet" "data_subnet" {

   

    for_each = var.nics

   
   name = each.value.subnet_name

   virtual_network_name = each.value.virtual_network_name

   resource_group_name = each.value.resource_group_name




}

data "azurerm_public_ip" "data_pips" {

    

    for_each = var.nics

   name = each.value.public_ip_name

   resource_group_name = each.value.resource_group_name

}




resource "azurerm_network_interface" "nic" {




  for_each = var.nics


  name = each.value.nic_name

  resource_group_name = each.value.resource_group_name

  location = each.value.location

  ip_configuration {

    name = "Internal"

    subnet_id = data.azurerm_subnet.data_subnet[each.key].id

    private_ip_address_allocation = "Dynamic"

    

  }

}