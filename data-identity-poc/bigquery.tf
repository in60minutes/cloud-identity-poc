resource "google_bigquery_dataset" "customer_dataset" {
  dataset_id = "customer_dataset"
  location   = var.region
}
resource "google_bigquery_table" "customers" {
  dataset_id = google_bigquery_dataset.customer_dataset.dataset_id
  table_id   = "customers"

  schema = jsonencode([
    {
      name = "customer_id"
      type = "INT64"
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