variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "prefix" {
  type = string
  description = "enter the name for your cluster"
  default = "Avsha-EKS"
}

variable "cluster_name" {
  default = "Avsha-EKS-cluster"
}

variable "node_group" {
 default = "Avsha-EKS-workernodes"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default =  ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}