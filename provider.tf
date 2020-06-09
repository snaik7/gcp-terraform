provider "google" {
  version = "3.5.0"
  credentials = file("account.json")
  project     = "var.project_id"
  region      = "us-central1"
  zone    = "us-central1-c"
}