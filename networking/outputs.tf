output "provider_address" {
  value = google_compute_address.bastion.address
}
output "provider_subnetwork_name" {
  value = google_compute_subnetwork.bastion.name
}