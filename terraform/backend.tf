terraform {
  backend "gcs" {
    bucket = "gcp-bucket-devyoddha"
    prefix = "terraform/statefile"
  }
}