variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "reader_email" {
  description = "Google account that receives BigQuery Data Viewer"
  type        = string
}

variable "engineer_email" {
  description = "Google account that receives BigQuery Data Editor"
  type        = string
}