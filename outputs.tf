output "deployment_message" {
  description = "Access info for the deployed instance"
  value       = "The instance is deployed with the external IP ${module.ec2-docker.ec2_instance_external_ip}, please use ${var.external-dns} to access it. "
}