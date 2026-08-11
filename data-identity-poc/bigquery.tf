resource "google_bigquery_dataset" "customer_dataset" {
  dataset_id = "customer_dataset"
  project    = var.project_id
  location   = "asia-south1"
}

resource "google_bigquery_table" "customers" {
  project    = var.project_id
  dataset_id = google_bigquery_dataset.customer_dataset.dataset_id
  table_id   = "customers"

  deletion_protection = true

  schema = jsonencode([
    {
      name = "customer_id"
      type = "INTEGER"
      mode = "REQUIRED"
    },
    {
      name = "customer_email"
      type = "STRING"
      mode = "NULLABLE"
    },
    {
      name = "signup_date"
      type = "DATE"
      mode = "NULLABLE"
    },
    {
      name = "customer_name"
      type = "STRING"
      mode = "NULLABLE"
    }
  ])
}