resource "null_resource" "remove_known_hosts" {
  triggers = {
    external_dns = var.external-dns
  }

  provisioner "local-exec" {
    when = destroy
    command = "ssh-keygen -R ${self.triggers.external_dns}"
  }
}