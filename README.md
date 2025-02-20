# Boilerplate of Terraform deployment with CircleCI

## Run in local

```bash

cd terraform/environments/staging
terraform init
terraform plan
terraform apply
terraform show
terraform destroy
```

## Run via CircleCI

- push a new commit to branch `staging`
- Check CircleCI pipelines
- Manual approval is needed for staring `terraform apply`
- Manual approval is needed for staring `terraform destroy`


## For more info

- Check the folder of docs for more tech details
