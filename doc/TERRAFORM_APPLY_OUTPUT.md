```
azurerm_resource_group.udacity_rg: Creating...
azurerm_resource_group.udacity_rg: Creation complete after 1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources]
azurerm_availability_set.udacity_av_set: Creating...
azurerm_managed_disk.udacity_md[1]: Creating...
azurerm_virtual_network.udacity_vn: Creating...
azurerm_public_ip.udacity_ip: Creating...
azurerm_managed_disk.udacity_md[0]: Creating...
azurerm_network_security_group.udacity_nsg: Creating...
azurerm_availability_set.udacity_av_set: Creation complete after 1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Compute/availabilitySets/udacity-av-set]
azurerm_public_ip.udacity_ip: Creation complete after 3s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/publicIPAddresses/udacity-public-ip]
azurerm_lb.udacity_lb: Creating...
azurerm_managed_disk.udacity_md[1]: Creation complete after 4s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Compute/disks/udacity-1-md]
azurerm_managed_disk.udacity_md[0]: Creation complete after 4s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Compute/disks/udacity-0-md]
azurerm_lb.udacity_lb: Creation complete after 1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/loadBalancers/udacity-lb]
azurerm_lb_backend_address_pool.udacity_lb_pool: Creating...
azurerm_lb_probe.udacity_lb_probe: Creating...
azurerm_virtual_network.udacity_vn: Creation complete after 5s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/virtualNetworks/udacity-network]
azurerm_network_security_group.udacity_nsg: Creation complete after 5s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/networkSecurityGroups/udacity-nsg]
azurerm_subnet.udacity_subnet: Creating...
azurerm_lb_backend_address_pool.udacity_lb_pool: Creation complete after 1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/loadBalancers/udacity-lb/backendAddressPools/udacity_lb_pool]
azurerm_lb_probe.udacity_lb_probe: Creation complete after 1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/loadBalancers/udacity-lb/probes/udacity-probe]
azurerm_lb_rule.udacity_lb_rule: Creating...
azurerm_lb_rule.udacity_lb_rule: Creation complete after 1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/loadBalancers/udacity-lb/loadBalancingRules/http]
azurerm_subnet.udacity_subnet: Creation complete after 4s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/virtualNetworks/udacity-network/subnets/internal]
azurerm_network_interface.udacity_nic[1]: Creating...
azurerm_network_interface.udacity_nic[0]: Creating...
azurerm_network_interface.udacity_nic[0]: Creation complete after 1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/networkInterfaces/udacity-0-nic]
azurerm_network_interface.udacity_nic[1]: Creation complete after 2s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/networkInterfaces/udacity-1-nic]
azurerm_network_interface_backend_address_pool_association.udacity_lb_pool_nic[0]: Creating...   
azurerm_network_interface_security_group_association.udacity_nsg_nic[0]: Creating...
azurerm_network_interface_backend_address_pool_association.udacity_lb_pool_nic[1]: Creating...
azurerm_network_interface_security_group_association.udacity_nsg_nic[1]: Creating...
azurerm_linux_virtual_machine.udacity_vm[1]: Creating...
azurerm_linux_virtual_machine.udacity_vm[0]: Creating...
azurerm_network_interface_security_group_association.udacity_nsg_nic[1]: Creation complete after 
1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/networkInterfaces/udacity-1-nic|/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/networkSecurityGroups/udacity-nsg]
azurerm_network_interface_security_group_association.udacity_nsg_nic[0]: Creation complete after 
2s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/networkInterfaces/udacity-0-nic|/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/networkSecurityGroups/udacity-nsg]
azurerm_network_interface_backend_address_pool_association.udacity_lb_pool_nic[1]: Creation complete after 2s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/networkInterfaces/udacity-1-nic/ipConfigurations/udacity-1-nic|/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/loadBalancers/udacity-lb/backendAddressPools/udacity_lb_pool]
azurerm_network_interface_backend_address_pool_association.udacity_lb_pool_nic[0]: Creation complete after 2s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/networkInterfaces/udacity-0-nic/ipConfigurations/udacity-0-nic|/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Network/loadBalancers/udacity-lb/backendAddressPools/udacity_lb_pool]
azurerm_linux_virtual_machine.udacity_vm[1]: Still creating... [10s elapsed]
azurerm_linux_virtual_machine.udacity_vm[0]: Still creating... [10s elapsed]
azurerm_linux_virtual_machine.udacity_vm[0]: Still creating... [20s elapsed]
azurerm_linux_virtual_machine.udacity_vm[1]: Still creating... [20s elapsed]
azurerm_linux_virtual_machine.udacity_vm[1]: Still creating... [30s elapsed]
azurerm_linux_virtual_machine.udacity_vm[0]: Still creating... [30s elapsed]
azurerm_linux_virtual_machine.udacity_vm[1]: Still creating... [40s elapsed]
azurerm_linux_virtual_machine.udacity_vm[0]: Still creating... [40s elapsed]
azurerm_linux_virtual_machine.udacity_vm[1]: Creation complete after 47s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Compute/virtualMachines/udacity-1-vm]
azurerm_linux_virtual_machine.udacity_vm[0]: Creation complete after 48s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Compute/virtualMachines/udacity-0-vm]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[0]: Creating...
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[1]: Creating...
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[0]: Still creating... [10s elapsed]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[1]: Still creating... [10s elapsed]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[0]: Still creating... [20s elapsed]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[1]: Still creating... [20s elapsed]   
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[1]: Still creating... [30s elapsed]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[0]: Still creating... [30s elapsed]   
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[0]: Still creating... [40s elapsed]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[1]: Still creating... [40s elapsed]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[0]: Still creating... [50s elapsed]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[1]: Still creating... [50s elapsed]   
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[0]: Still creating... [1m0s elapsed]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[1]: Still creating... [1m0s elapsed]  
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[0]: Creation complete after 1m1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Compute/virtualMachines/udacity-0-vm/dataDisks/udacity-0-md]
azurerm_virtual_machine_data_disk_attachment.udacity_vm_md[1]: Creation complete after 1m1s [id=/subscriptions/8ea8008d-c78f-4081-a0e8-056537561f89/resourceGroups/udacity-resources/providers/Microsoft.Compute/virtualMachines/udacity-1-vm/dataDisks/udacity-1-md]

Apply complete! Resources: 22 added, 0 changed, 0 destroyed.

The state of your infrastructure has been saved to the path
below. This state is required to modify and destroy your
infrastructure, so keep it safe. To inspect the complete state
use the `terraform show` command.

State path: terraform.tfstate

Outputs:

public_ip_address = "23.101.71.188"
```