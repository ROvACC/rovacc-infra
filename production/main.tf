
terraform {
  backend "gcs" {
    bucket = "rovacc-infra-tfstate-production"
    prefix = "terraform/state"
  }
}

module "service" {
  source = "../modules/service"

  environment = "production"
  system_id   = "rovacc-infra"

  project = "vatsim-romania"
  region  = "europe-west3"
  zone    = "europe-west3-a"
}
