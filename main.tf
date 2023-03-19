
terraform {
  required_version = "> 1.0.0"
}

provider "scaleway" {
  zone       = var.zone
  region     = var.region
  project_id = var.project_id
}