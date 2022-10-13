data "aws_iam_role" "argo_role" {
  name = "argo-${var.cluster_name}"
}

module "iam_assumable_role_ci_custom_trust_policy" {
  source = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"

  version = "5.4.0"

  create_role = true

  role_name = "ci-role-${var.cluster_name}"

  tags = {
    Role          = "CI"
    ClusterName   = var.cluster_name
    ProvisionedBy = "kubefirst"
  }

  custom_role_trust_policy = data.aws_iam_policy_document.ci_custom_trust_policy.json
  custom_role_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}

data "aws_iam_policy_document" "ci_custom_trust_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = [data.aws_iam_role.argo_role.arn]
    }
  }
}
