# Notes

## Terraform IAM

Confirm IAM account

- develop@...

Confirm permissions

- Compute Instance Admin
- Compute Network Admin
- Service Account User
- Storage Admin
- Storage Object Admin
- Storage Object Viewer

- Artifact Registry Writer
- Service Account Admin
- Project IAM Admin
- Serverless VPC Access Admin
- Cloud SQL Admin
- Cloud Run Admin

Confirm gcp credential json file

```sh

cat /Users/[user]/.config/gcloud/application_default_credentials.json

cat $GOOGLE_APPLICATION_CREDENTIALS

export GOOGLE_APPLICATION_CREDENTIALS=/Users/.../gcp_credentials.json

export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"

# Try login if "terraform apply" does not work
gcloud auth application-default login

gcloud auth application-default set-quota-project coworkout-250305

gsutil mb -p coworkout-250306 -l us-central1 gs://coworkout-250306

# Config Consul

brew tap hashicorp/tap
brew install hashicorp/tap/consul

# http://localhost:8500
consul agent -dev

terraform workspace new init-tf
# or
terraform workspace select init-tf


```

## Samples

[](https://github.com/terraform-google-modules/terraform-example-foundation)
