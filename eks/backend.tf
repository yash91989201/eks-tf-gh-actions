terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "e2e-mern-tf"
    region         = "us-east-1"
    key            = "LockID"
    dynamodb_table = "e2e-mern-tf-state"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
