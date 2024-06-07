provider "google" {
  project = "test-422914"
}

resource "google_compute_instance" "vm" {
  count                   = var.instances
  name                    = "VM-${count.index}"
  machine_type            = "e2-micro"
  zone                    = "europe-west2-a"
  tags                    = ["web"]
  metadata_startup_script = file("../scripts/startup.sh")

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

