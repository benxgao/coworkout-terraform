module "compute_instance" {
  source = "../../modules/compute_instance"

  instance_name  = var.instance_name
  machine_type   = var.machine_type
  # region         = var.region
  zone           = var.zone
  startup_script = file(var.startup_script)
  tags           = var.tags
}
