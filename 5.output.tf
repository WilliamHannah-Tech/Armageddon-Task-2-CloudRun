


output "service_url" {
    value = google_cloud_run_service.cloudapp.status[0].url
  
}

output "latest_revision" {
    value = google_cloud_run_service.cloudapp.status[0].latest_created_revision_name
  
}