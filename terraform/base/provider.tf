terraform {
  backend "s3" {
    bucket  = var.bucket_ci
    key     = "terraform/base/tfstate.tf"
    region  = "<AWS_DEFAULT_REGION>"
    encrypt = true
  }
}

provider "aws" {
  region = var.aws_region
}
