# Terraform Project for Compute Instance Deployment

This project deploys a f1-micro VM instance to Google Cloud Platform (GCP) in staging and production environments.

## Environments

**staging:** Deploys to us-central1.
**production:** Deploys to us-west1.

## Modules

**compute_instance:** Contains the Terraform configuration for creating the compute instance.

## Usage

1. Clone the repository.
2. Navigate to the desired environment directory (e.g., `environments/staging`).
3. Initialize Terraform: `terraform init`
4. Plan the deployment: `terraform plan`
5. Apply the deployment: `terraform apply`

## Variables

See the `variables.tf` files in each environment and the `modules/compute_instance` directory for available variables.  Remember to replace `"your-gcp-project-id"` with your actual GCP project ID.

## Startup Script

You can provide a startup script by creating a `startup.sh` file in the same directory as the `main.tf` file and referencing it in the module call.
