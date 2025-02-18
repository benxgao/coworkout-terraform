terraform {
  # gcloud auth login
  # gcloud storage buckets create gs://coworkout-20230409  --location=australia-southeast1
  backend "gcs" {
    bucket = "coworkout-20230409"
    prefix = "terraform/state/staging"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}
