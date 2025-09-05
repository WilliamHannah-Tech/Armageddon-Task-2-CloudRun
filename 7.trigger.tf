

/*

resource "google_cloudbuild_trigger" "branch" {
  name = "latest-branch-trigger"

  source_to_build {
    uri = var.github_url
    ref = var.repo_branch
    repo_type = "GITHUB"
  }

  build {
    step {
      name = var.builder_image
      args = [ "build", "-t", var.image, "." ]
    }
    images = [var.image]
  }


}
*/


/*

resource "google_cloudbuild_trigger" "latest_branch" {
    name = "latest-branch-trigger"

    # connecting to the github repo
    github {
      owner = var.github_owner
      name = var.github_repo
      push {
        branch = "^cloudrun-deploy$"
      }
    }
    build {
      step {

        # builds the cloud image in the build container

        name = var.builder_image
        args = [ "build", "-t", var.image, "." ]
      }
      images = [ var.image ]

      
    }
    
  
}

*/