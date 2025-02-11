resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = "f1-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11" # Or your preferred image
    }
  }

  network_interface {
    network = "default" # Or your VPC network name
  }

  # Optional: Add metadata, tags, etc. as needed
  metadata = {
    startup-script = var.startup_script # Example: for bootstrapping
  }

  tags = var.tags # Example: for filtering or firewall rules
}
