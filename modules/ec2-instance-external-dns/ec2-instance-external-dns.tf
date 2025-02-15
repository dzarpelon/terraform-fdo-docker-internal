resource "aws_route53_record" "tfe_fdo_docker_internal" {
  zone_id = var.route53_zone_id
  name    =  var.external-dns
  type    = "A"
  ttl     = 300
  records = [var.ec2_instance_external_ip]
  lifecycle {
    create_before_destroy = true
  }
}