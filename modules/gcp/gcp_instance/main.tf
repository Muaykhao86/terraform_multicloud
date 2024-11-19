provider "google" {
  project = var.project
}

resource "google_compute_instance" "vm" {
  count                   = var.instances
  name                    = "${var.name}-${count.index}"
  machine_type            = var.machine_type
  zone                    = var.zone
  tags                    = [var.env_tag]
  metadata_startup_script = file("../scripts/startup.sh")

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
    access_config {
    }
  }
}

