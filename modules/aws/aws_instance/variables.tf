variable "instances" {
  type = number
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "subnet_id" {
  type = string
}

variable "region" {
  type    = string
  default = "eu-west-2"
}




