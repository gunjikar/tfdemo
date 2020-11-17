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

# filestore
data "terraform_remote_state" "filestore" {
  backend = "gcs"

  config = {
    bucket = "hcldemohcl"
    prefix = "filestore"
  }
}

# image: debian 10 (buster)
data "google_compute_image" "debian" {
  family  = "debian-10"
  project = "debian-cloud"
}
