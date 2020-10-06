resource "google_compute_firewall" "from-internet-to-bastion" {
  name = "from-internet-to-bastion-${var.random}"
  network = google_compute_network.network.name

  direction = "INGRESS"

  source_ranges = [
    "0.0.0.0/0"]
  #target_tags = [
  #  "bastion"]

  allow {
    protocol = "tcp"
    ports = [
      "22"]
  }

  depends_on = [google_compute_network.network]
}

resource "google_compute_firewall" "from-bastion-to-all" {
  name = "from-bastion-to-all-${var.random}"
  network = google_compute_network.network.name

  direction = "INGRESS"
  source_tags = ["bastion"]
  target_tags = ["all"]

  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  depends_on = [google_compute_network.network]
}