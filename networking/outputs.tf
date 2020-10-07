output "bastion_nat_ip" {
  value = google_compute_address.bastion.address
}

output "elastic_nat_ip" {
  value = google_compute_address.elastic.address
}

output "bastion_subnetwork_name" {
  value = google_compute_subnetwork.bastion.name
}

output "elastic_subnetwork_name" {
  value = google_compute_subnetwork.elastic.name
}