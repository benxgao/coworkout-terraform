variable "region" {
  type        = string
  description = "GCP region for the instance"
  default     = "australia-southeast1"
}

variable "cluster_name" {
  type        = string
  description = "Name of the GKE cluster"
}
