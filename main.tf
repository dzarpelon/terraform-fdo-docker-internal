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

resource "aws_instance" "tfe-fdo-docker" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.ssh_key
  vpc_security_group_ids =  [aws_security_group.allow_ssh.id]
  user_data = <<-EOF
    #cloud-config
    packages:
      - ec2-instance-connect
  EOF
  tags = {
    Name        = var.instance_name
    Environment = var.environment
    ManagedBy   = var.ManagedBy
  }

}


resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Security group to allow inbound SSH traffic"
  
  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}