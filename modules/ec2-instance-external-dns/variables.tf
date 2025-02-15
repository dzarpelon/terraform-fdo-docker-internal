variable "route53_zone_id" {
  description = "The ID of the Route 53 hosted zone"
  type        = string
}

variable "ec2_instance_external_ip" {
  description = "The public IP address of the EC2 instance"
  type        = string
}

variable "external-dns" {
    description = "The external DNS name to be used by the instance"
    type = string
}