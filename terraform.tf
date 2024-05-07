terraform {
  required_version = ">= 0.14.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.102"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

provider "azurerm" {
  features {}
}
