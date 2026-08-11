terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 2.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "google" {
  project = var.project_id
  region  = var.region
}
provider "snowflake" {
  account_name      = "MD54827"
  organization_name = "QLSAZQF"
  user              = var.snowflake_user
  password          = var.snowflake_password
}