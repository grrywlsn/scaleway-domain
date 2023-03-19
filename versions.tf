terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = ">= 2.13"
    }
  }
  required_version = ">= 1.4"
}