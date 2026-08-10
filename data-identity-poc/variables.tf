variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "data_readers_group" {
  description = "Google group for data readers"
  type        = string
}

variable "data_engineers_group" {
  description = "Google group for data engineers"
  type        = string
}