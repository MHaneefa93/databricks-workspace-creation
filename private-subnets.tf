data "aws_availability_zones" "available" {}

# Private subnets
resource "aws_subnet" "private_subnets" {
  count                   = length(var.private_subnet_pair)
  vpc_id                  = var.existing_vpc_id
  cidr_block              = var.private_subnet_pair[count.index]
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = false

  tags = {
    Name = "databricks-${local.prefix}-private-subnet-${count.index}"
  }
}

# Private route table
resource "aws_route_table" "private_route_tables" {
  count  = length(var.private_subnet_pair)
  vpc_id = var.existing_vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.existing_nat_gateway_id
  }
}

# Private route table association
resource "aws_route_table_association" "private_route_table_associations" {
  count          = length(var.private_subnet_pair)
  subnet_id      = aws_subnet.private_subnets[count.index].id
  route_table_id = aws_route_table.private_route_tables[count.index].id
}