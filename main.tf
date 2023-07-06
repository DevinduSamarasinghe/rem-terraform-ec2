terraform { 
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = ">= 4.52.0"
      }
    }
}

provider "aws" {
  region = "us-east-1"
  access_key = var.provider_keys[0]
  secret_key = var.provider_keys[1]
}

module "vpc" {
    source = "./vpc"
    vpc_cidr = var.vpc_cidr
    prod_subnet_prefix = var.prod_subnet_prefix
    prod_subnet_az = var.prod_subnet_az
    prod_subnet_tag = var.prod_subnet_tag
}