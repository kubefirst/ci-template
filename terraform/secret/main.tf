resource "kubernetes_secret" "token" {
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