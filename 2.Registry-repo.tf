# Create an Artifact Registry repository for Docker images

resource "google_artifact_registry_repository" "armageddon-task-2-cloudRun" {
  project       = "theowaf-class65-wh"
  location      = "us-central1"
  repository_id = "armageddon-task-2-cloudRun"
  description   = "Docker repo for cloud run images"
  format        = "DOCKER"
  provider      = google
}


