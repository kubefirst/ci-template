output "aws_iam_policy_document" {
  value       = data.aws_iam_policy_document.ci_custom_trust_policy
  description = "IAM policy document in JSON format for use with resources that expect policy documents."
}

output "iam_assumable_role_ci_custom_trust_policy" {
  value       = module.iam_assumable_role_ci_custom_trust_policy
  description = "Single IAM role which can be assumed by trusted resources."
}
