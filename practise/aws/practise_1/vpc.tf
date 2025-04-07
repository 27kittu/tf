locals {
  subnet_n = ["0", "64", "128", "192"]
}
resource "aws_vpc" "vpc1" {
  cidr_block = "192.168.0.0/24"
  tags = {
    Name = "vpc1"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "192.168.0.0/26"
  tags = {
    Name = "subnet_0"
  }
}

resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.vpc1.id
  route {
    cidr_block = "192.168.0.0/26"
    gateway_id = aws_internet_gateway.gw1.id
  }
  tags = {
    Name = "rt_0"
  }
}

resource "aws_internet_gateway" "gw1" {
  vpc_id = aws_vpc.vpc1.id
  tags = {
    Name = "gw1"
  }
}

resource "aws_internet_gateway_attachment" "gwa" {
  internet_gateway_id = aws_internet_gateway.gw1.id
  vpc_id              = aws_vpc.vpc1.id
  depends_on          = [aws_internet_gateway.gw1]
}
