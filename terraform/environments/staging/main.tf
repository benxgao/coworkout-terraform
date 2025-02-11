module "compute_instance" {
  source = "../../modules/compute_instance"

  instance_name  = "staging-vm-instance"
  zone           = "us-central1-a"      # Example zone
  startup_script = file("./startup.sh") # Example startup script
  tags           = ["staging", "web-server"]
}
