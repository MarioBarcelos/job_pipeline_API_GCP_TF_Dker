provider "google" {
    project = var.project_id
    region = var.region
}

terraform {
  backend "gcs" {
    bucket = "teste-repo-orig"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "4.79.0"
    }
  }
}