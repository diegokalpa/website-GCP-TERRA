variable "name" {
  default = "tf-cluster"
}

variable "project" {
  default = "website-GCP-TERRA"
}

variable "location" {
  default = "us-central1"
}

variable "initial_node_count" {
  default = 1
}

variable "machine_type" {
  default = "n1-standard-2"
}