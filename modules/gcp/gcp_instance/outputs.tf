output "ip" {
  value = resource.google_compute_instance.*.vm.network_interface.0.network_ip
}

output "ext_ip" {
  value = resource.google_compute_instance.*.vm.network_interface.0.access_config.0.nat_ip
}

output "instance_name" {
  value = google_compute_instance.vm.*.name
}
