terraform {
  backend "s3" {
    bucket  = "<BUCKET_NAME>"
    key     = "terraform/secret/tfstate.tf"
    region  = "<AWS_DEFAULT_REGION>"
    encrypt = true
  }
}

provider "aws" {
  region = "<AWS_DEFAULT_REGION>"
  default_tags {
    tags = {
      ClusterName = "<CLUSTER_NAME>"
    }
  }

}

data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "<TF_STATE_BUCKET>"
    key    = "terraform/base/tfstate.tf"
    region = "<AWS_DEFAULT_REGION>"
  }
}

data "aws_eks_cluster" "cluster" {
  name = data.terraform_remote_state.eks.outputs.eks_module.cluster_name
}

data "aws_eks_cluster_auth" "cluster" {
  name = data.terraform_remote_state.eks.outputs.eks_module.cluster_name
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}