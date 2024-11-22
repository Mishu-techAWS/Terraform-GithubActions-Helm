resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "private_subnet" {
  name                     = "${var.region}-${var.subnet_names[0]}"
  region                   = var.region
  network                  = google_compute_network.vpc.name
  ip_cidr_range            = var.subnet_cidr_ranges[0]
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "public_subnet" {
  name                     = "${var.region}-${var.subnet_names[1]}"
  region                   = var.region
  network                  = google_compute_network.vpc.name
  ip_cidr_range            = var.subnet_cidr_ranges[1]
  private_ip_google_access = false
}