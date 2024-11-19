module "aws" {
  source = "../../modules/aws/aws_instance"
  # selects whether the module is deployed
  count     = var.enable_aws ? 1 : 0
  instances = var.instance_count
  subnet_id = var.aws_subnet
  ami_id    = data.aws_ami.this.id
}

module "azure" {
  source = "../../modules/azure/azure_instance"
  # selects whether the module is deployed
  count                   = var.enable_azure ? 1 : 0
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  instances               = var.instance_count
}

module "gcp" {
  source = "../../modules/gcp/gcp_instance"
  # selects whether the module is deployed
  count     = var.enable_gcp ? 1 : 0
  instances = var.instance_count
}
