# locals {
#   network_names = toset([
#     "north",
#     "south",
#   ])
# }

resource "google_compute_instance" "default" {
  #for_each     = local.network_names # Or count = length(var.network_names)

  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default" # Or (for_each) each.key | (count) var.network_names[count.index]
  }

  # Optional: Add metadata, tags, etc. as needed
  metadata = {
    startup-script = var.startup_script
  }

  tags = var.tags

  provisioner "local-exec" {
    when       = destroy
    on_failure = continue
    # command    = "echo The server's IP address is ${self.public_ip} >> ip_addresses.txt"
    command = "echo provisioner command to run on destroy"
  }

  # lifecycle {
  #   create_before_destroy = false # new instance created before old one is destroyed
  #   prevent_destroy       = true # instance CANNOT be destroyed
  #   replace_triggered_by  = ["metadata"] # instance replaced when metadata changes

  #   postcondition {
  #     condition     = self.tags["Component"] == "nomad-server"
  #     error_message = "tags[\"Component\"] must be \"nomad-server\"."
  #   }
  # }

  # provisioner "file" {
  # source       = "conf/myapp.conf"
  # destination  = "/etc/myapp.conf"

  #   connection {
  #     type     = "ssh"
  #     user     = "root"
  #     password = var.root_password
  #     host     = self.public_ip
  #   }
  # }

}


# data "google_compute_instance" "existing_instance" {
#   name = var.instance_name
#   zone = var.zone
# }

# output "existing_instance_details" {
#   value = data.google_compute_instance.existing_instance
# }
