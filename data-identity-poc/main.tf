resource "google_project_iam_member" "data_readers" {
  project = var.project_id
  role    = "roles/bigquery.dataViewer"
  member  = "group:${var.data_readers_group}"
}

resource "google_project_iam_member" "data_engineers" {
  project = var.project_id
  role    = "roles/bigquery.dataEditor"
  member  = "group:${var.data_engineers_group}"
}