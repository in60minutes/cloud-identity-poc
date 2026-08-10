resource "google_storage_bucket" "customer_data" {
  name     = "${var.project_id}-customer-data"
  location = var.region

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}