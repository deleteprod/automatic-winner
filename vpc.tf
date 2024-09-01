# Build/Create the VPC
resource "aws_vpc" "martian_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "martian-vpc"
  }

}

resource "aws_internet_gateway" "the-belt-gateway" {
  vpc_id = aws_vpc.martian_vpc.id

  tags = {
    Name = "the-belt-gateway"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.martian_vpc.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true
  #availability_zone       = (check this) 

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_route_table" "public_routing_table" {
  vpc_id = aws_vpc.martian_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.the-belt-gateway.id
  }
  tags = {
    Name = "public-routing-table"
  }
}

resource "aws_route_table_association" "public_routing_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_routing_table.id
}

