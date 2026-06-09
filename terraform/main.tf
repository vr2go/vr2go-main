terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket         = "vr2go-main-terraform-state"
    key            = "global/terraform.tfstate"
    region         = "eu-central-1"
    use_lockfile   = true
    encrypt        = true
    profile        = "vr2go-main"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "vr2go-main"
}
