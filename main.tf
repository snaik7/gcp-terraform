resource "google_compute_instance" "app" {
  name         = "my-app-instance"
  project      = "named-enigma-277405" #didn't work with var.project_id
  machine_type = "n1-standard-2"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

 network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = "echo '<!doctype html><html><body><h1>Hello Google!</h1></body></html>' | sudo tee /var/www/html/index.html" # Edit this line

  tags = ["allow-ping", "allow-http", "allow-ssh"]
}