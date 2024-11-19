//General variables

variable "enable_aws" {
  description = "Enable / Disable AWS instances"
  type        = bool
  default     = true
}

variable "enable_azure" {
  description = "Enable / Disable Azure instances"
  type        = bool
  default     = false
}

variable "enable_gcp" {
  description = "Enable / Disable GCP instances"
  type        = bool
  default     = false
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 1
}

//AWS variables

variable "aws_subnet" {
  description = "Subnet ID for AWS instances"
  type        = string
  default = "0.0.0.0/24"
}

//Azure variables

variable "resource_group_name" {
  description = "Resource Group Name for Azure instances"
  type        = string
  default     = "myFirstResourceGroup"
}

variable "resource_group_location" {
  description = "Resource Group Location for Azure instances"
  type        = string
  default     = "uksouth"
}

//GCP variables

