# variable "project" {
#   description = "The GCP project ID"
#   type        = string
#   default     = "coworkout-20230409"
# }

# variable "region" {
#   description = "The GCP region"
#   type        = string
#   default     = "us-central1"
# }

# variable "zone" {
#   description = "The GCP zone"
#   type        = string
#   default     = "us-central1-c"
# }

# variable "instance_name" {
#   description = "The name of the VM instance"
#   type        = string
#   default     = "terraform-instance"
# }

# variable "machine_type" {
#   description = "The machine type for the VM instance"
#   type        = string
#   default     = "f1-micro"
# }

# variable "boot_disk_image" {
#   description = "The boot disk image for the VM instance"
#   type        = string
#   default     = "debian-cloud/debian-11"
# }

# variable "network_name" {
#   description = "The name of the VPC network"
#   type        = string
#   default     = "terraform-network"
# }

# variable "iam_policy_member" {
#   description = "The IAM policy member"
#   type        = string
#   default     = "develop@coworkout-20230409.iam.gserviceaccount.com"
# }

# variable "random_file_prefix" {
#   description = "The prefix for the random file module"
#   type        = string
#   default     = "test"
# }

# variable "random_file_content" {
#   description = "The content for the random file module"
#   type        = string
#   default     = "Hi test!"
# }

variable "app_version" {
type = string
default = "v1.0.1"
}
