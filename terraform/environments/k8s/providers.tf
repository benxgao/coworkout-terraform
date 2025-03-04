terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.35"
    }
  }

  # gcloud auth login
  # gcloud storage buckets create gs://coworkout-250305  --location=australia-southeast1
  backend "gcs" {
    bucket = "coworkout-250305"
    prefix = "terraform/state/k8s"
  }
}

provider "kubernetes" {
  # ~/.cube/config is loaded by default
  # Check docs/k8s.md for more info

  config_path = "~/.kube/config"
}
