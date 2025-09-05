

#building cloud run
#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service
# red deployment 100 percent split

resource "google_cloud_run_service" "cloudapp" {
    name = "cloudrun-007"
    location = "us-central1"
    project = "theowaf-class65-wh"

    template {
      spec {
        containers {
          image = "us-central1-docker.pkg.dev/theowaf-class65-wh/cloud-run-ex-new/test:latest"
          env {
            name = "COLOR"
            value = red
          }
        }
      }
    }

    traffic {
      percent = 40
      revision_name = "cloudrun-007-00004-xj8"
    }

    traffic {
      percent = 10
      revision_name = "cloudrun-007-00003-hts"
    }
    traffic {
      percent = 10
      revision_name = "cloudrun-007-00002-2b2"
    }

    traffic {
      percent = 40
      revision_name = "cloudrun-007-00001-cxg"
    }
    
    /*
     traffic {
      percent = 100
      latest_revision = true
      }
      */
      

   
}

# make app plublic

resource "google_cloud_run_service_iam_member" "member" {
location = google_cloud_run_service.cloudapp.location
project = google_cloud_run_service.cloudapp.project
service = google_cloud_run_service.cloudapp.name
role = "roles/run.invoker"
member = "allUsers"
  
}

