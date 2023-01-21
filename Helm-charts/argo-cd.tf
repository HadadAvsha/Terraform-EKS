provider "helm" {
  kubernetes {
    host                   = var.endpoint
    cluster_ca_certificate = base64decode(var.cluster_cert)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
      command     = "aws"
    }
  }
}


resource "helm_release" "argocd" {
  name       = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = "default"
  version    = "5.13.8"
  cleanup_on_fail = true
  
  values = [
    file("${path.module}/argo-cd-values.yaml")
  ]

  provisioner "local-exec" {
    command = "bash ~/my_scripts/argo-repo_main-app.sh"
  }
}
