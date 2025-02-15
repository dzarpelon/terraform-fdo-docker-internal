terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.87"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_credentials_profile
}

module "ec2-docker" {
  source = "./ec2-docker/"
}