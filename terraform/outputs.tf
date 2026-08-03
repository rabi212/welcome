output "project_id" {
  value = var.project_id
}

output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "artifact_registry" {
  value = google_artifact_registry_repository.docker_repo.repository_id
}

output "service_account" {
  value = google_service_account.github_actions.email
}
