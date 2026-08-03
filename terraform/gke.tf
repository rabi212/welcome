resource "google_container_cluster" "primary" {

  name     = var.cluster_name
  location = var.zone

  deletion_protection      = false
  remove_default_node_pool = true
  initial_node_count       = 1

}

resource "google_container_node_pool" "primary_nodes" {

  name     = "primary-node-pool"
  cluster  = google_container_cluster.primary.name
  location = var.zone

  node_count = var.node_count

  node_config {

    machine_type = var.machine_type

    spot = true

    disk_size_gb = 20

    disk_type = "pd-balanced"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    labels = {
      environment = "dev"
    }

  }

}
