module "compute_instance" {
  source = "../../modules/compute_instance"

  instance_name  = var.instance_name
  machine_type   = var.machine_type
  zone           = var.zone
  startup_script = file(var.startup_script)
  tags           = var.tags
}

# [Sample] usage of outputs

# module "another_module" {
#   source = "../../modules/another_module"

#   instance_id = module.compute_instance.instance_id
# }


# [Sample] usage of data 1

# data "google_compute_image" "debian" {
#   family  = "debian-11"
#   project = "debian-cloud"
# }

# output "image_id" {
#   value = data.google_compute_image.debian.self_link
# }

# [Sample] usage of data 2

# data "local_file" "config" {
#   filename = "${path.module}/startup.sh"
# }

# output "file_content" {
#   value = data.local_file.config.content
# }

# [Sample] usage of data 3

# data "terraform_remote_state" "vpc" {
#   backend = "s3"

#   config = {
#     bucket = "my-terraform-state"
#     key    = "path/to/my/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

# output "vpc_id" {
#   value = data.terraform_remote_state.vpc.outputs.vpc_id
# }

# [Sample] usage of data 4

# data "google_compute_subnetwork" "selected" {
#   name    = "default"
#   region  = var.region
#   project = var.project_id
# }

# output "subnet_cidr_block" {
#   value = data.google_compute_subnetwork.selected.ip_cidr_range
# }

# [Sample] usage of data 5

# data "gcp_iam_role" "selected" {
#   name    = "roles/Editor"
#   project = var.project
# }

# output "role_arn" {
#   value = data.gcp_iam_role.selected.name
# }

output "instance_id" {
  value = module.compute_instance.instance_id
}

# Check block to verify the value of instance_id
resource "null_resource" "check_instance_id" {
  provisioner "local-exec" {
    command = "echo Instance ID is ${module.compute_instance.instance_id}"
  }

  lifecycle {
    postcondition {
      condition     = module.compute_instance.instance_id != ""
      error_message = "Instance ID should not be empty"
    }
  }
}
