# resource "google_project_iam_member" "data_readers" {
#   project = var.project_id
#   role    = "roles/bigquery.dataViewer"
#   member  = "group:${var.data_readers_group}"
# }

# resource "google_project_iam_member" "data_engineers" {
#   project = var.project_id
#   role    = "roles/bigquery.dataEditor"
#   member  = "group:${var.data_engineers_group}"
# }


# Reader access
resource "google_project_iam_member" "data_reader" {
  project = var.project_id
  role    = "roles/bigquery.dataViewer"
  member  = "group:${var.reader_email}"
}

# Engineer access
resource "google_project_iam_member" "data_engineer" {
  project = var.project_id
  role    = "roles/bigquery.dataEditor"
  member  = "group:${var.engineer_email}"
}

resource "google_storage_bucket" "customer_data" {
  name     = "${var.project_id}-customer-data"
  project  = var.project_id
  location = "ASIA-SOUTH1"

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      age = 30
    }

    action {
      type = "Delete"
    }
  }
}