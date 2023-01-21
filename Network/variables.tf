variable "prefix" {}
variable "azs" {
  type        = list(string)
  description = "Availability Zones"
}
variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
}
