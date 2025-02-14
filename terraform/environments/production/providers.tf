terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.16" # Or your preferred version
    }
  }
}

provider "google" {
  project = "coworkout-20230409" # Replace with your project ID
  region  = "us-west1" # Default region for production
}
