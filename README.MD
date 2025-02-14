# Terraform Enterprise (TFE) Flexible Deployment Option (FDO) using Docker

## Description

This repository is created to have the deployment file, using Terraform, of the TFE FDO Docker deployment option.

For reference, the manual installation steps are described [here](https://developer.hashicorp.com/terraform/enterprise/deploy/docker "Manual TFE docker installation")

The current version will be a simple EC2 server with external IP and a Let's Encrypt certificate.

## Pre-requisites

Make sure you have the following pre-requists met in your system:

- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) installed
- [AWS CLI](https://aws.amazon.com/cli/) - used to configure the needed credential profile
- [AWS Credentials](https://docs.aws.amazon.com/cli/v1/userguide/cli-configure-files.html) file configured with your credentials
- Git

## Deployment steps

To install TFE using this repository, make sure you populate the required info on the terraform.tfvars file with youy needed configuration values.

Once that is done go, in the directory where you have the "main.tf"" file run the following command commands:

- Initialize the terraform: `terraform init`
- Check the deployment plan: `terraform plan`
- Apply the plan: `terrform apply -auto-approve`
