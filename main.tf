resource "google_storage_bucket" "gcs_bucket" {
    name = "teste-repo"
    laocation = var.region
}