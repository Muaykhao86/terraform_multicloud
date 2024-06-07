variable "instances" {
  type        = number
  description = "Number of instances to create"
}

variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type"
  validation {
    condition     = can(regex("t3.micro|t3.small|t3.medium", var.instance_type))
    error_message = "ERROR: Instance type must be t3.micro, t3.small or t3.medium."
  }
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID of the VPC to launch the instance in"
}

variable "region" {
  type        = string
  default     = "eu-west-2"
  description = "AWS region"
}

variable "name" {
  type        = string
  default     = "VM"
  description = "Name of the instance"
}




