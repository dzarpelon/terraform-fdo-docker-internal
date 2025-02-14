variable "instance_name" {
  description = "The name of the instance"
  type        = string
  default     = "tfe_docker"
}

variable "aws_credentials_profile" {
  description = "The AWS profile credentials to be used. This will come from your ~/.aws/credentials file"
  type = string
  default = "default"
}

variable "ami" {
  description = "The ami to be used with this system. Remember that AMI values differ depending on the region it will be deployed. Default value is for Ubuntu24.04LTS  from eu-central"
  type        = string
  default     = "ami-07eef52105e8a2059" #  AMI ID for Ubuntu 24.04 LTS in eu-central-1. 
}

variable "aws_region" {
  description = "The AWS region used for deployment"
  type        = string
  default     = "eu-central-1"
}

variable "ssh_key" {
  description = "The ssh key configured in your aws account"
  type = string
  default = "dzarpelon_key"
}

variable "instance_type" {
  description = "Define which AWS instance type will be used. Default to free tier"
  type        = string
  default     = "t3.micro" # This is NOT the minimum accepted by TFE.
}


variable "environment" {
  description = "The environment this is running. (i.e Docker/K8s/Openshift)"
  type        = string
  default     = "docker"
}

variable "ManagedBy" {
  description = "Who manages this"
  type        = string
  default     = "Terraform"
}