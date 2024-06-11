# Internet gateway for VPC
resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "main_igw"
  }
}

#Public RT for VPC
resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id
  }

#   route {
#     ipv6_cidr_block        = "::/0"
#     egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
#   }

  tags = {
    Name = "PublicRT"
  }
}

#Private RT for VPC
resource "aws_route_table" "PrivateRT" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name = "PrivateRT"
  }
}

#Route table association for primary zone
resource "aws_route_table_association" "zonea_public_subnet_association" {
  subnet_id      = aws_subnet.zonea_public_subnet.id
  route_table_id = aws_route_table.PublicRT.id
}

resource "aws_route_table_association" "zonea_private_subnet_association" {
  subnet_id      = aws_subnet.zonea_private_subnet.id
  route_table_id = aws_route_table.PrivateRT.id
}

#Route table association for secondary zone
resource "aws_route_table_association" "zoneb_public_subnet_association" {
  subnet_id      = aws_subnet.zoneb_public_subnet.id
  route_table_id = aws_route_table.PublicRT.id
}

resource "aws_route_table_association" "zoneb_private_subnet_association" {
  subnet_id      = aws_subnet.zoneb_private_subnet.id
  route_table_id = aws_route_table.PrivateRT.id
}