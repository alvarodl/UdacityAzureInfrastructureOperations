```
  # azurerm_availability_set.udacity_av_set will be created
  + resource "azurerm_availability_set" "udacity_av_set" {
      + id                           = (known after apply)
      + location                     = "westeurope"
      + managed                      = true
      + name                         = "udacity-av-set"
      + platform_fault_domain_count  = 2
      + platform_update_domain_count = 2
      + resource_group_name          = "udacity-resources"
      + tags                         = {
          + "environment" = "udacity"
        }
    }

  # azurerm_lb.udacity_lb will be created
  + resource "azurerm_lb" "udacity_lb" {
      + id                   = (known after apply)
      + location             = "westeurope"
      + name                 = "udacity-lb"
      + private_ip_address   = (known after apply)
      + private_ip_addresses = (known after apply)
      + resource_group_name  = "udacity-resources"
      + sku                  = "Basic"
      + tags                 = {
          + "environment" = "udacity"
        }

      + frontend_ip_configuration {
          + id                            = (known after apply)
          + inbound_nat_rules             = (known after apply)
          + load_balancer_rules           = (known after apply)
          + name                          = "udacity-public-ip-address"
          + outbound_rules                = (known after apply)
          + private_ip_address            = (known after apply)
          + private_ip_address_allocation = (known after apply)
          + private_ip_address_version    = "IPv4"
          + public_ip_address_id          = (known after apply)
          + public_ip_prefix_id           = (known after apply)
          + subnet_id                     = (known after apply)
        }
    }

  # azurerm_lb_backend_address_pool.udacity_lb_pool will be created
  + resource "azurerm_lb_backend_address_pool" "udacity_lb_pool" {
      + backend_ip_configurations = (known after apply)
      + id                        = (known after apply)
      + load_balancing_rules      = (known after apply)
      + loadbalancer_id           = (known after apply)
      + name                      = "udacity_lb_pool"
      + resource_group_name       = "udacity-resources"
    }

  # azurerm_lb_probe.udacity_lb_probe will be created
  + resource "azurerm_lb_probe" "udacity_lb_probe" {
      + id                  = (known after apply)
      + interval_in_seconds = 15
      + load_balancer_rules = (known after apply)
      + loadbalancer_id     = (known after apply)
      + name                = "udacity-probe"
      + number_of_probes    = 2
      + port                = 8080
      + protocol            = (known after apply)
      + resource_group_name = "udacity-resources"
    }

  # azurerm_lb_rule.udacity_lb_rule will be created
  + resource "azurerm_lb_rule" "udacity_lb_rule" {
      + backend_address_pool_id        = (known after apply)
      + backend_port                   = 8080
      + disable_outbound_snat          = false
      + enable_floating_ip             = false
      + frontend_ip_configuration_id   = (known after apply)
      + frontend_ip_configuration_name = "udacity-public-ip-address"
      + frontend_port                  = 80
      + id                             = (known after apply)
      + idle_timeout_in_minutes        = (known after apply)
      + load_distribution              = (known after apply)
      + loadbalancer_id                = (known after apply)
      + name                           = "http"
      + probe_id                       = (known after apply)
      + protocol                       = "Tcp"
      + resource_group_name            = "udacity-resources"
    }

  # azurerm_linux_virtual_machine.udacity_vm[0] will be created
  + resource "azurerm_linux_virtual_machine" "udacity_vm" {
      + admin_password                  = (sensitive value)
      + admin_username                  = "TestAdmin"
      + allow_extension_operations      = true
      + availability_set_id             = (known after apply)
      + computer_name                   = (known after apply)
      + disable_password_authentication = false
      + extensions_time_budget          = "PT1H30M"
      + id                              = (known after apply)
      + location                        = "westeurope"
      + max_bid_price                   = -1
      + name                            = "udacity-0-vm"
      + network_interface_ids           = (known after apply)
      + priority                        = "Regular"
      + private_ip_address              = (known after apply)
      + private_ip_addresses            = (known after apply)
      + provision_vm_agent              = true
      + public_ip_address               = (known after apply)
      + public_ip_addresses             = (known after apply)
      + resource_group_name             = "udacity-resources"
      + size                            = "Standard_D2s_v3"
      + source_image_id                 = "/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/packer-rg/providers/Microsoft.Compute/images/ubuntuImage"
      + tags                            = {
          + "environment" = "udacity"
        }
      + virtual_machine_id              = (known after apply)
      + zone                            = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = "os-disk-0"
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }
    }

  # azurerm_linux_virtual_machine.udacity_vm[1] will be created
  + resource "azurerm_linux_virtual_machine" "udacity_vm" {
      + admin_password                  = (sensitive value)
      + admin_username                  = "TestAdmin"
      + allow_extension_operations      = true
      + availability_set_id             = (known after apply)
      + computer_name                   = (known after apply)
      + disable_password_authentication = false
      + extensions_time_budget          = "PT1H30M"
      + id                              = (known after apply)
      + location                        = "westeurope"
      + max_bid_price                   = -1
      + name                            = "udacity-1-vm"
      + network_interface_ids           = (known after apply)
      + priority                        = "Regular"
      + private_ip_address              = (known after apply)
      + private_ip_addresses            = (known after apply)
      + provision_vm_agent              = true
      + public_ip_address               = (known after apply)
      + public_ip_addresses             = (known after apply)
      + resource_group_name             = "udacity-resources"
      + size                            = "Standard_D2s_v3"
      + source_image_id                 = "/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/packer-rg/providers/Microsoft.Compute/images/ubuntuImage"
      + tags                            = {
          + "environment" = "udacity"
        }
      + virtual_machine_id              = (known after apply)
      + zone                            = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = "os-disk-1"
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }
    }

  # azurerm_managed_disk.udacity_md[0] will be created
  + resource "azurerm_managed_disk" "udacity_md" {
      + create_option        = "Empty"
      + disk_iops_read_write = (known after apply)
      + disk_mbps_read_write = (known after apply)
      + disk_size_gb         = 1
      + id                   = (known after apply)
      + location             = "westeurope"
      + name                 = "udacity-0-md"
      + resource_group_name  = "udacity-resources"
      + source_uri           = (known after apply)
      + storage_account_type = "Standard_LRS"
    }

  # azurerm_managed_disk.udacity_md[1] will be created
  + resource "azurerm_managed_disk" "udacity_md" {
      + create_option        = "Empty"
      + disk_iops_read_write = (known after apply)
      + disk_mbps_read_write = (known after apply)
      + disk_size_gb         = 1
      + id                   = (known after apply)
      + location             = "westeurope"
      + name                 = "udacity-1-md"
      + resource_group_name  = "udacity-resources"
      + source_uri           = (known after apply)
      + storage_account_type = "Standard_LRS"
    }

  # azurerm_network_interface.udacity_nic[0] will be created
  + resource "azurerm_network_interface" "udacity_nic" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "westeurope"
      + mac_address                   = (known after apply)
      + name                          = "udacity-0-nic"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "udacity-resources"
      + tags                          = {
          + "environment" = "udacity"
        }
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + name                          = "udacity-0-nic"
          + primary                       = (known after apply)
          + private_ip_address            = (known after apply)
          + private_ip_address_allocation = "dynamic"
          + private_ip_address_version    = "IPv4"
          + subnet_id                     = (known after apply)
        }
    }

  # azurerm_network_interface.udacity_nic[1] will be created
  + resource "azurerm_network_interface" "udacity_nic" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "westeurope"
      + mac_address                   = (known after apply)
      + name                          = "udacity-1-nic"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "udacity-resources"
      + tags                          = {
          + "environment" = "udacity"
        }
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + name                          = "udacity-1-nic"
          + primary                       = (known after apply)
          + private_ip_address            = (known after apply)
          + private_ip_address_allocation = "dynamic"
          + private_ip_address_version    = "IPv4"
          + subnet_id                     = (known after apply)
        }
    }

  # azurerm_network_interface_backend_address_pool_association.udacity_lb_pool_nic[0] will be created
  + resource "azurerm_network_interface_backend_address_pool_association" "udacity_lb_pool_nic" {
      + backend_address_pool_id = (known after apply)
      + id                      = (known after apply)
      + ip_configuration_name   = "udacity-0-nic"
      + network_interface_id    = (known after apply)
    }

  # azurerm_network_interface_backend_address_pool_association.udacity_lb_pool_nic[1] will be created
  + resource "azurerm_network_interface_backend_address_pool_association" "udacity_lb_pool_nic" {  
      + backend_address_pool_id = (known after apply)
      + id                      = (known after apply)
      + ip_configuration_name   = "udacity-1-nic"
      + network_interface_id    = (known after apply)
    }

  # azurerm_network_interface_security_group_association.udacity_nsg_nic[0] will be created        
  + resource "azurerm_network_interface_security_group_association" "udacity_nsg_nic" {
      + id                        = (known after apply)
      + network_interface_id      = (known after apply)
      + network_security_group_id = (known after apply)
    }

  # azurerm_network_interface_security_group_association.udacity_nsg_nic[1] will be created
  + resource "azurerm_network_interface_security_group_association" "udacity_nsg_nic" {
      + id                        = (known after apply)
      + network_interface_id      = (known after apply)
      + network_security_group_id = (known after apply)
    }

  # azurerm_network_security_group.udacity_nsg will be created
  + resource "azurerm_network_security_group" "udacity_nsg" {
      + id                  = (known after apply)
      + location            = "westeurope"
      + name                = "udacity-nsg"
      + resource_group_name = "udacity-resources"
      + security_rule       = [
          + {
              + access                                     = "Allow"
              + description                                = ""
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "8080"
              + destination_port_ranges                    = []
              + direction                                  = "Inbound"
              + name                                       = "HTTP"
              + priority                                   = 100
              + protocol                                   = "Tcp"
              + source_address_prefix                      = "*"
              + source_address_prefixes                    = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
            },
        ]
      + tags                = {
          + "environment" = "udacity"
        }
    }

  # azurerm_public_ip.udacity_ip will be created
  + resource "azurerm_public_ip" "udacity_ip" {
      + allocation_method       = "Static"
      + fqdn                    = (known after apply)
      + id                      = (known after apply)
      + idle_timeout_in_minutes = 4
      + ip_address              = (known after apply)
      + ip_version              = "IPv4"
      + location                = "westeurope"
      + name                    = "udacity-public-ip"
      + resource_group_name     = "udacity-resources"
      + sku                     = "Basic"
      + tags                    = {
          + "environment" = "udacity"
        }
    }

  # azurerm_resource_group.udacity_rg will be created
  + resource "azurerm_resource_group" "udacity_rg" {
      + id       = (known after apply)
      + location = "westeurope"
      + name     = "udacity-resources"
      + tags     = {
          + "environment" = "udacity"
        }
    }

  # azurerm_subnet.udacity_subnet will be created
  + resource "azurerm_subnet" "udacity_subnet" {
      + address_prefix                                 = (known after apply)
      + address_prefixes                               = [
          + "10.0.2.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = false
      + enforce_private_link_service_network_policies  = false
      + id                                             = (known after apply)
      + name                                           = "internal"
      + resource_group_name                            = "udacity-resources"
      + virtual_network_name                           = "udacity-network"
    }

  # azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[0] will be created
  + resource "azurerm_virtual_machine_data_disk_attachment" "udacity_vm_md" {
      + caching                   = "ReadWrite"
      + create_option             = "Attach"
      + id                        = (known after apply)
      + lun                       = 0
      + managed_disk_id           = (known after apply)
      + virtual_machine_id        = (known after apply)
      + write_accelerator_enabled = false
    }

  # azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[1] will be created
  + resource "azurerm_virtual_machine_data_disk_attachment" "udacity_vm_md" {
      + caching                   = "ReadWrite"
      + create_option             = "Attach"
      + id                        = (known after apply)
      + lun                       = 10
      + managed_disk_id           = (known after apply)
      + virtual_machine_id        = (known after apply)
      + write_accelerator_enabled = false
    }

  # azurerm_virtual_network.udacity_vn will be created
  + resource "azurerm_virtual_network" "udacity_vn" {
      + address_space         = [
          + "10.0.0.0/16",
        ]
      + guid                  = (known after apply)
      + id                    = (known after apply)
      + location              = "westeurope"
      + name                  = "udacity-network"
      + resource_group_name   = "udacity-resources"
      + subnet                = (known after apply)
      + tags                  = {
          + "environment" = "udacity"
        }
      + vm_protection_enabled = false
    }

Plan: 22 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + public_ip_address = (known after apply)

------------------------------------------------------------------------
```