output "instance_name" {
  value = google_compute_instance.default.name
  description = "Name of the created instance"
}

output "instance_zone" {
  value = google_compute_instance.default.zone
  description = "Zone of the created instance"
}

output "instance_network_interface" {
  value = google_compute_instance.default.network_interface
  description = "Network interface details of the created instance"
}
