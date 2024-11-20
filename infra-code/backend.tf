terraform {
  backend "gcs" {
    bucket = "gcp-bucket"
    prefix = "terraform/state"
  }
}