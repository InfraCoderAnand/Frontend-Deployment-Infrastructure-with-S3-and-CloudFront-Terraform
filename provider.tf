terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.60.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 2.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = var.profile
}

