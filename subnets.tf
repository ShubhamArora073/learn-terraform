#Primary zone with public and private subnet
resource "aws_subnet" "zonea_public_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.zonea_public_subnet_cidr_block
  availability_zone = "eu-central-1a"

  tags = {
    Name = "Zone A Public Subnet"
  }
}

resource "aws_subnet" "zonea_private_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  #cidr_block        = "192.168.2.0/24"
  cidr_block = var.zonea_private_subnet_cidr_block
  availability_zone = "eu-central-1a"

  tags = {
    Name = "Zone A Private Subnet"
  }
}

#Primary zone with public and private subnet

resource "aws_subnet" "zoneb_public_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.zoneb_public_subnet_cidr_block
  availability_zone = "eu-central-1b"

  tags = {
    Name = "Zone B Public Subnet"
  }
}

resource "aws_subnet" "zoneb_private_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.zoneb_private_subnet_cidr_block
  availability_zone = "eu-central-1b"

  tags = {
    Name = "Zone B Private Subnet"
  }
}
