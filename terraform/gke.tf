resource "google_container_cluster" "primary" {

  name     = var.cluster_name

  location = var.zone

  deletion_protection = false

  remove_default_node_pool = true

  initial_node_count = 1

}
