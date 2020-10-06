output "provider_address" {
  value = google_compute_address.bastion.address
}

output "bastion_subnetwork_name" {
  value = google_compute_subnetwork.bastion.name
}

output "elastic_subnetwork_name" {
  value = google_compute_subnetwork.elastic.name
}