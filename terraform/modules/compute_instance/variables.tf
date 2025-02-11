variable "instance_name" {
  type = string
  description = "Name of the compute instance"
}

variable "zone" {
  type = string
  description = "GCP zone for the instance"
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
