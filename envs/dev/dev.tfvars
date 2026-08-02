dev_rgs = {


  rg1 = {


    name = "dev_rg1"

    location = "central India"
  }




}


dev_vnets = {


  vnet1 = {


    vnet_name = "dev_vnet1"

    location = "central India"

    resource_group_name = "dev_rg1"

    address_space = ["10.0.0.0/16"]


  }



}

dev_subnet = {

  subnet1 = {

    subnet_name = "dev_frontend_subnet"


    resource_group_name = "dev_rg1"

    virtual_network_name = "dev_vnet1"

    address_prefixes = ["10.0.1.0/24"]

  }

  subnet2 = {

    subnet_name = "dev_backend_subnet"

    resource_group_name = "dev_rg1"

    virtual_network_name = "dev_vnet1"

    address_prefixes = ["10.0.2.0/24"]

  }

  subnet3 = {

    subnet_name = "dev_database_subnet"



    resource_group_name = "dev_rg1"

    virtual_network_name = "dev_vnet1"

    address_prefixes = ["10.0.3.0/24"]

  }





}


dev_nics = {


  nic1 = {
    nic_name = "frontend_nic"

    location = "central India"

    resource_group_name = "dev_rg1"

    subnet_name = "dev_frontend_subnet"

    virtual_network_name = "dev_vnet1"

    public_ip_name = "dev_frontend_pip"


  }

  nic2 = {
    nic_name = "backend_nic"

    location = "central India"

    resource_group_name = "dev_rg1"

    subnet_name = "dev_backend_subnet"

    virtual_network_name = "dev_vnet1"

    public_ip_name = "dev_backend_pip"


  }
}


dev_public_ips = {

  pip1 = {


    public_ip_name = "dev_frontend_pip"

    location = "central India"

    resource_group_name = "dev_rg1"


  }

  pip2 = {


    public_ip_name = "dev_backend_pip"

    location = "central India"

    resource_group_name = "dev_rg1"


  }



}