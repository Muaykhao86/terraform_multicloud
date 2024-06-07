variable "instances" {
  type        = number
  description = "Number of instances to create"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name for Azure instances"
}

variable "resource_group_location" {
  type        = string
  description = "Resource Group Location for Azure instances"
}

variable "name" {
  type        = string
  default     = "VM"
  description = "Name of the instance"
}