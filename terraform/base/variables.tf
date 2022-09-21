variable "aws_region" {
  type        = string
  description = "(Required) AWS region where the cluster was created."
}

variable "bucket_ci" {
  type        = string
  description = "Name of the bucket that stores the Terraform state files."
}
