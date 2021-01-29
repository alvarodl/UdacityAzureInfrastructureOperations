provider "azurerm" {
  features {}
}

data "azurerm_image" "udacity_image" {
  name                = var.image_name
  resource_group_name = var.image_resource_group
}

resource "azurerm_resource_group" "udacity_rg" {
  name     = "${var.prefix}-resources"
  location = var.location

  tags = {
    environment = "udacity"
  }
}

resource "azurerm_virtual_network" "udacity_vn" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.udacity_rg.location
  resource_group_name = azurerm_resource_group.udacity_rg.name

  tags = {
    environment = "udacity"
  }
}

resource "azurerm_public_ip" "udacity_ip" {
  name                = "${var.prefix}-public-ip"
  resource_group_name = azurerm_resource_group.udacity_rg.name
  location            = azurerm_resource_group.udacity_rg.location
  allocation_method   = "Static"

  tags = {
    environment = "udacity"
  }
}

resource "azurerm_subnet" "udacity_subnet" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.udacity_rg.name
  virtual_network_name = azurerm_virtual_network.udacity_vn.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_lb" "udacity_lb" {
  name                = "${var.prefix}-lb"
  resource_group_name = azurerm_resource_group.udacity_rg.name
  location            = azurerm_resource_group.udacity_rg.location

  frontend_ip_configuration {
    name                 = "${var.prefix}-public-ip-address"
    public_ip_address_id = azurerm_public_ip.udacity_ip.id
  }

  tags = {
    environment = "udacity"
  }
}

resource "azurerm_lb_backend_address_pool" "udacity_lb_pool" {
  name                = "${var.prefix}_lb_pool"
  resource_group_name = azurerm_resource_group.udacity_rg.name
  loadbalancer_id     = azurerm_lb.udacity_lb.id
}

resource "azurerm_lb_probe" "udacity_lb_probe" {
  name                = "${var.prefix}-probe"
  loadbalancer_id     = azurerm_lb.udacity_lb.id
  resource_group_name = azurerm_resource_group.udacity_rg.name
  port                = var.application_port
}

resource "azurerm_lb_rule" "udacity_lb_rule" {
  name                           = "http"
  resource_group_name            = azurerm_resource_group.udacity_rg.name
  loadbalancer_id                = azurerm_lb.udacity_lb.id
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = var.application_port
  backend_address_pool_id        = azurerm_lb_backend_address_pool.udacity_lb_pool.id
  frontend_ip_configuration_name = "${var.prefix}-public-ip-address"
  probe_id                       = azurerm_lb_probe.udacity_lb_probe.id
}

resource "azurerm_network_security_group" "udacity_nsg" {
  name                = "${var.prefix}-nsg"
  resource_group_name = azurerm_resource_group.udacity_rg.name
  location            = azurerm_resource_group.udacity_rg.location

  security_rule {
    name                       = "HTTP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = var.application_port
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "DenyInternetInbound"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "Internet"
    destination_address_prefix = "VirtualNetwork"
  }

  tags = {
    environment = "udacity"
  }
}

resource "azurerm_network_interface" "udacity_nic" {
  count               = var.number_nodes
  name                = "${var.prefix}-${count.index}-nic"
  resource_group_name = azurerm_resource_group.udacity_rg.name
  location            = azurerm_resource_group.udacity_rg.location

  ip_configuration {
    name                          = "${var.prefix}-${count.index}-nic"
    subnet_id                     = azurerm_subnet.udacity_subnet.id
    private_ip_address_allocation = "Dynamic"
  }

  tags = {
    environment = "udacity"
  }
}

resource "azurerm_network_interface_security_group_association" "udacity_nsg_nic" {
  count                     = var.number_nodes
  network_interface_id      = azurerm_network_interface.udacity_nic[count.index].id
  network_security_group_id = azurerm_network_security_group.udacity_nsg.id
}

resource "azurerm_network_interface_backend_address_pool_association" "udacity_lb_pool_nic" {
  count                   = var.number_nodes
  ip_configuration_name   = "${var.prefix}-${count.index}-nic"
  network_interface_id    = azurerm_network_interface.udacity_nic[count.index].id
  backend_address_pool_id = azurerm_lb_backend_address_pool.udacity_lb_pool.id
}

resource "azurerm_availability_set" "udacity_av_set" {
  name                         = "${var.prefix}-av-set"
  location                     = azurerm_resource_group.udacity_rg.location
  resource_group_name          = azurerm_resource_group.udacity_rg.name
  platform_fault_domain_count  = 2
  platform_update_domain_count = 2

  tags = {
    environment = "udacity"
  }
}

resource "azurerm_linux_virtual_machine" "udacity_vm" {
  count                           = var.number_nodes
  name                            = "${var.prefix}-${count.index}-vm"
  resource_group_name             = azurerm_resource_group.udacity_rg.name
  location                        = azurerm_resource_group.udacity_rg.location
  size                            = "Standard_D2s_v3"
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  availability_set_id             = azurerm_availability_set.udacity_av_set.id
  network_interface_ids           = [azurerm_network_interface.udacity_nic[count.index].id]

  source_image_id = data.azurerm_image.udacity_image.id

  os_disk {
    name                 = "os-disk-${count.index}"
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  tags = {
    environment = "udacity"
  }
}

resource "azurerm_managed_disk" "udacity_md" {
  count                = var.number_nodes
  name                 = "${var.prefix}-${count.index}-md"
  resource_group_name  = azurerm_resource_group.udacity_rg.name
  location             = azurerm_resource_group.udacity_rg.location
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 1
}

resource "azurerm_virtual_machine_data_disk_attachment" "udacity_vm_md" {
  count              = var.number_nodes
  managed_disk_id    = azurerm_managed_disk.udacity_md[count.index].id
  virtual_machine_id = azurerm_linux_virtual_machine.udacity_vm[count.index].id
  lun                = 10 * count.index
  caching            = "ReadWrite"
}

