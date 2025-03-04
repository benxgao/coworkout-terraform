terraform {
  # gcloud auth login
  # gcloud storage buckets create gs://coworkout-250305  --location=australia-southeast1
  backend "gcs" {
    bucket = "coworkout-250305"
    prefix = "terraform/state/staging"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}
