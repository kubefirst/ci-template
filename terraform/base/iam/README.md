## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_assumable_role_ci_custom_trust_policy"></a> [iam\_assumable\_role\_ci\_custom\_trust\_policy](#module\_iam\_assumable\_role\_ci\_custom\_trust\_policy) | terraform-aws-modules/iam/aws//modules/iam-assumable-role | 5.4.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy_document.ci_custom_trust_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_role.worker_node_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | (Required) Name of the cluster. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_iam_policy_document"></a> [aws\_iam\_policy\_document](#output\_aws\_iam\_policy\_document) | IAM policy document in JSON format for use with resources that expect policy documents. |
| <a name="output_iam_assumable_role_ci_custom_trust_policy"></a> [iam\_assumable\_role\_ci\_custom\_trust\_policy](#output\_iam\_assumable\_role\_ci\_custom\_trust\_policy) | Single IAM role which can be assumed by trusted resources. |
