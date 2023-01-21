# resource "aws_route_table" "private_rt" {
#   vpc_id = aws_vpc.vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.ngw.id
#   }
# }

# resource "aws_subnet" "private_subnets" {
#   # name              = "${var.prefix}-Private_SN"
#   count             = length(var.private_subnet_cidrs)# == 1 ? 1 : length(var.private_subnet_cidrs)
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = element(var.private_subnet_cidrs, count.index) #"10.0.2.0/24"#var.private_subnet_cidrs
#   availability_zone = element(var.azs, count.index)
#   # map_public_ip_on_launch = true
#   tags = {
#     Name = "${var.prefix}-Private_SN"
#   }
# }

# resource "aws_route_table_association" "private_subnets_asso" {
#   count          = length(var.private_subnet_cidrs)
#   subnet_id      = element(aws_subnet.private_subnets[*].id, count.index)
#   route_table_id = aws_route_table.private_rt.id
# }


# resource "aws_eip" "eip" {
#   depends_on = [
#     aws_internet_gateway.igw
#   ]
# }
# resource "aws_nat_gateway" "ngw" {
#   allocation_id = aws_eip.eip.id
# #   connectivity_type = "private"
#   subnet_id         = aws_subnet.public_subnets.id[0]
# }