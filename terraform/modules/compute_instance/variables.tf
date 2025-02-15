# variable "network_names" {
#   type = set(string)
# }

variable "instance_name" {
  type = string
  description = "Name of the compute instance"
}
variable "machine_type" {
  type = string
  description = "Machine type for the instance"
  default = "f1-micro"
}

variable "zone" {
  type = string
  description = "GCP zone for the instance"
  default = "us-east1-b"
}

variable "startup_script" {
  type = string
  description = "Startup script for the instance (optional)"
  default = ""
}

variable "tags" {
  type = list(string)
  description = "Tags for the instance (optional)"
  default = []
}
