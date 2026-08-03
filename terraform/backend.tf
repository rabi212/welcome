terraform {
  backend "gcs" {
    bucket = "billmonitor-tf-state"
    prefix = "terraform/state"
  }
}
