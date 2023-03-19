
terraform {
  backend "kubernetes" {}
}

provider "scaleway" {
  zone       = var.zone
  region     = var.region
  project_id = var.project_id
}