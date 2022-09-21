## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam"></a> [iam](#module\_iam) | ./iam | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | (Required) AWS region where the cluster was created. | `string` | n/a | yes |
| <a name="input_bucket_ci"></a> [bucket\_ci](#input\_bucket\_ci) | Name of the bucket that stores the Terraform state files. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_module"></a> [iam\_module](#output\_iam\_module) | Information about the resources created by the IAM module. |
