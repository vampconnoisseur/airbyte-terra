terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.13.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.3.4"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.29.0"
    }
  }

  backend "s3" {
    bucket = "airbyte-bucket-eks"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = "~> 1.8.2"
}
