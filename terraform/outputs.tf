output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "repository" {
  value = google_artifact_registry_repository.docker_repo.repository_id
}
