provider "google" {
  project = "firstproject-291023"
  region  = "us-central1"
}

terraform {
  backend "gcs" {
    bucket = "hcldemohcl"
    prefix = "vpc"
  }
}
