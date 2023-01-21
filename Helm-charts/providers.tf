terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.31.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.15.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.7.1"
    }
    
    argocd = {
      source = "oboukili/argocd"
      version = "0.4.7"
    }

  }
  # required_version = "~> 0.14"
}