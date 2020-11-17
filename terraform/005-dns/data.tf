# network
data "terraform_remote_state" "vpc" {
  backend = "gcs"

  config = {
    bucket = "hcldemohcl"
    prefix = "vpc"
  }
}


