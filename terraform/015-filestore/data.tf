# network
data "terraform_remote_state" "vpc" {
  backend = "gcs"

  config = {
    bucket = "hcldemohcl"
    prefix = "vpc"
  }
}

# dns
data "terraform_remote_state" "dns" {
  backend = "gcs"

  config = {
    bucket = "hcldemohcl"
    prefix = "dns"
  }
}
