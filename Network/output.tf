output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "public_subnets_ids" {
  value = tolist(aws_subnet.public_subnets[*].id)
}
