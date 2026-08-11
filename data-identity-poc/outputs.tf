# output "data_readers_mapping" {
#   value = "data-readers -> roles/bigquery.dataViewer"
# }

# output "data_engineers_mapping" {
#   value = "data-engineers -> roles/bigquery.dataEditor"
# }

output "reader_iam_binding" {
  value = {
    user = var.reader_email
    role = "roles/bigquery.dataViewer"
  }
}

output "engineer_iam_binding" {
  value = {
    user = var.engineer_email
    role = "roles/bigquery.dataEditor"
  }
}