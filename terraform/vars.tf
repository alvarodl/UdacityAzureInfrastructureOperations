variable "prefix" {
  description = "The prefix which should be used for all resources"
  default     = "udacity"
}

variable "username" {
  description = "The admin username of Linux virtual machine"
  default     = "TestAdmin"
}

variable "password" {
  description = "The admin password of Linux virtual machine"
  default     = "TestAdmin123@"
}

variable "location" {
  description = "The Azure Region in which all resources should be created"
  default     = "West Europe"
}

variable "number_nodes" {
  description = "The number of nodes that should be created"
  default     = 2

  validation {
    condition     = can(regex("^[1-9][0-9]*$", var.number_nodes))
    error_message = "The number_nodes must be and integer greater than zero."
  }
}

variable "image_resource_group" {
  description = "The resource group where images are stored"
  default     = "packer-rg"
}

variable "image_name" {
  description = "The name of the image used to create virtual machines"
  default     = "ubuntuImage"
}

variable "application_port" {
  description = "The port where the application is listening"
  default     = 8080
}
