module "compute_instance" {
  source = "../../modules/compute_instance"

  instance_name  = "production-vm-instance"
  zone           = "us-west1-a"         # Example zone
  startup_script = file("./startup.sh") # Example startup script
  tags           = ["production", "web-server"]
}
