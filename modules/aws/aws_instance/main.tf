provider "aws" {
  region = var.region
}

locals {
  name = value
}


resource "aws_instance" "instance" {
      count         = var.instances
  ami           = var.ami_id

  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "instance-${count.index}"
  }
}
