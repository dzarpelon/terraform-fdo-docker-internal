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
  source = "./modules/ec2-docker/"
}

module "ec2-instance-external-dns" {
  source                   = "./modules/ec2-instance-external-dns/"
  route53_zone_id          = var.route53_zone_id
  ec2_instance_external_ip = module.ec2-docker.ec2_instance_external_ip
  external-dns = var.external-dns
  depends_on = [ module.ec2-docker ]
}

module "remove-known-hosts" {
  source = "./modules/remove_known_hosts"
  external-dns = var.external-dns
}