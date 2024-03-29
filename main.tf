resource "google_container_cluster" "primary" {
  name               = var.name
  location           = var.location
  initial_node_count = 1
  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    #service_account = google_service_account.default.email
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    labels = {
      foo = "bar"
    }
    tags = ["foo", "bar"]
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
}

## Si se requiere un grupo de nodos por separado usar la siguiente configuracion.

# resource "google_container_node_pool" "primary_preemptible_nodes" {
#   name       = "my-node-pool"
#   cluster    = google_container_cluster.primary.id
#   node_count = 1

#   node_config {
#     preemptible  = true
#     machine_type = "e2-small"

#     # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
#     #service_account = google_service_account.default.email
#     oauth_scopes = [
#       "https://www.googleapis.com/auth/cloud-platform"
#     ]
#   }
# }
