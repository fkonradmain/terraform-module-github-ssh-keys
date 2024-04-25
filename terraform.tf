terraform {
  required_version = ">1.7.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">6.1.0"
    }
    http = {
      source  = "hashicorp/http"
      version = ">3.4.0"
    }
  }
}
