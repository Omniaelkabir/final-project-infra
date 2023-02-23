resource "google_storage_bucket" "remote-bucket" {
    name = "gcp-bucket-2272"
    force_destroy = false
    location = "us-central1"
    storage_class = "STANDARD"
    versioning {
      enabled = true
    } 
    
}

terraform {
  backend "gcs" {
    bucket = "gcp-bucket-2272"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}