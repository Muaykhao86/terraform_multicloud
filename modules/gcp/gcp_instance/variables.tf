variable "instances" {
  type = number
}

variable "project" {
  type    = string
  default = "test-422914"
}

variable "machine_type" {
  type    = string
  default = "e2-micro"
}

variable "zone" {
  type    = string
  default = "europe-west2-a"
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "network" {
  type    = string
  default = "default"
}

variable "env_tag" {
  type    = string
  default = "test"
  validation {
    condition     = can(regex("dev|test|prod", var.env_tag))
    error_message = "ERROR: Environment must be dev, test or prod."
  }
}

variable "name" {
  type        = string
  default     = "VM"
  description = "Name of the instance"
}

