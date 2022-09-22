terraform {
  backend "s3" {
    bucket  = "<BUCKET_NAME>"
    key     = "terraform/base/tfstate.tf"
    region  = "<AWS_DEFAULT_REGION>"
    encrypt = true
  }
}

provider "aws" {
  region = var.aws_region
}
