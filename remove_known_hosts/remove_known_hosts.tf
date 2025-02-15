resource "null_resource" "remove_known_hosts" {
  # This trigger forces the command to run on every apply.
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "ssh-keygen -R ${var.external-dns}"
  }
}