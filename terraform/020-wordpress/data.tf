# vpc
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

# IMAGE - DEBIAN 10
data "google_compute_image" "wordpress" {
  name = "wordpress-base"
}
