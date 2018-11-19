variable "project" {
  description = "Project ID to deploy into."
}

variable "cluster_name" {
  description = "Cluster name."
}

variable "region" {
  description = "GCP Region"
}

variable "zone" {
  description = "Zone in region."
}

variable "machine_type" {
  description = "Machine type"
}

variable "min_node_count" {
  description = "Minimum number of nodes."
}

variable "max_node_count" {
  description = "Max number of nodes."
}

variable "auto_upgrade" {
  description = "True/false Enable auto cluster upgrade."
}

variable "auto_repair" {
  description = "True/false Enable auto cluster repair"
}

variable "node_count" {
  description = "Number of cluster nodes"
}
