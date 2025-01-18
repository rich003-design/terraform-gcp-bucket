provider "google" {
  project = var.project_id
}

resource "google_storage_bucket" "bucket" {
  name     = "${var.bucket_name}-${var.environment}"
  location = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
