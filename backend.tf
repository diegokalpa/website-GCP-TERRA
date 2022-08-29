terraform {
  
  ## Create Bucket in GCP in order to save terraform states:
  backend "gcs" {
    bucket  = "terraform_state_gcp3"
    prefix  = "terraform/state"
  }
}