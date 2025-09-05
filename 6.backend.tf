# backend configuration. 


terraform {
  backend "gcs" {
    bucket      = "armageddonbucket"
    prefix      = "terraform/state"
    credentials = "theowaf-class65-wh-a05527d82faa.json"
  }
  required_providers {
    google ={ 
        source  = "hashicorp/google"
        version = "~> 6.0"
    }
  }
}
