locals {
  app_name       = "gke-demo-app-node"
  app_labels     = { app = local.app_name }
  replicas       = 2
  container_port = 8080
  image          = "gcr.io/coworkout-20230409/gke-demo-app-node:v1"
}

resource "kubernetes_deployment" "gke_demo_app_node" {
  metadata {
    name = local.app_name
  }
  spec {
    replicas = local.replicas
    selector {
      match_labels = local.app_labels
    }
    template {
      metadata {
        labels = local.app_labels
      }
      spec {
        container {
          name  = local.app_name
          image = local.image
          port {
            container_port = local.container_port
          }
          resources {
            requests = {
              cpu    = "100m"
              memory = "256Mi"
            }
            limits = {
              cpu    = "200m"
              memory = "512Mi"
            }
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "gke_demo_app_node" {
  metadata {
    name = local.app_name
  }
  spec {
    selector = local.app_labels
    port {
      protocol    = "TCP"
      port        = 80
      target_port = local.container_port
    }
    type = "LoadBalancer"
  }
}
