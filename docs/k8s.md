# docker notes

## Kubernetes by Terraform

```bash
# Dockerize Nodejs app
docker build -t gcr.io/coworkout-20230409/gke-demo-app-node:v1 .

# Push the docker image to gcr.io
docker push gcr.io/coworkout-20230409/gke-demo-app-node:v1

# Required for using kubectl with gke
gcloud components install gke-gcloud-auth-plugin

# Generate k8s config file ~/.cube/config
gcloud container clusters get-credentials gke-demo-app-node --region australia-southeast1

```

## Kubernetes by commands

```bash

# Verify deployment
kubectl get pods

# Get public IP
kubectl get service gke-demo-app-node

```
