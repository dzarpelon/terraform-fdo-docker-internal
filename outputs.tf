output "ec2_instance_external_ip" {
  description = "The external IP address of the EC2 instance"
  value       = module.ec2-docker.ec2_instance_external_ip
}
output "aws_credentials_profile" {
  description = "AWS Credentials profile user"
  value       = module.ec2-docker.aws_credentials_profile
}

output "ec2_instance_public_dns" {
  description = "The public DNS of the EC2 instance"
  value       = module.ec2-docker.ec2_instance_public_dns
}