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
  backend "s3" {
    region = "us-east-2"
    bucket = "avsha-tf-state"
    key    = "tfstate"
  }
  # required_version = "~> 0.14"
}

provider "aws" {
  region = "us-west-2"
  default_tags {
    tags = {
      bootcamp   = "15"
      created_by = "Avshalom"
      managed_by = "terraform"
    }
  }
}