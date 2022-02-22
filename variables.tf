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

# ##credentials for kubernetes username and password
# variable "clusterusername" {
# #type = "string"
# description = "User name for authentication to the Kubernetes linux agent virtual machines in the cluster."
# default = "dcc12345"
# }

# variable "clusterpassword" {
# #type ="string"
# default = "MySecretPassTest123."
# description = "The password for the Linux admin account."
# }