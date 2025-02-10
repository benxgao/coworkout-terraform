# Notes

## Terraform IAM

Confirm IAM account

- develop@...

Confirm permissions

- Compute Instance Admin
- Compute Network Admin
- Service Account User

Confirm gcp credential json file

```sh

cat /Users/[user]/.config/gcloud/application_default_credentials.json

cat $GOOGLE_APPLICATION_CREDENTIALS


export GOOGLE_APPLICATION_CREDENTIALS=/Users/.../gcp_credentials.json

# Try login if "terraform apply" does not work
gcloud auth application-default login
```

## Samples

[](https://github.com/terraform-google-modules/terraform-example-foundation)
