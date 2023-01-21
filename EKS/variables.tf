variable "prefix" {}
variable "public_subnets_ids" {
  type        = list(string)
}
variable "cluster_name" {}
variable "node_group" {}