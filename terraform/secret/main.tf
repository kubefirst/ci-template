resource "kubernetes_secret" "github_token" {
  metadata {
    name      = "github-token"
    namespace = "argo"
  }

  data = {
    username = "github"
    password = var.github_token
  }

  type = "kubernetes.io/basic-auth"
}

resource "kubernetes_secret" "aws_secret" {
  metadata {
    name      = "aws-secret"
    namespace = "argo"
  }

  data = {
    username     = var.aws_access_key_id
    password = var.aws_secret_access_key
  }

  type = "kubernetes.io/basic-auth"
}