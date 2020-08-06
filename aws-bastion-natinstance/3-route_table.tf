resource "aws_route_table" "demo_route_private" {
  vpc_id = aws_vpc.demo_vpc.id

  route {
    cidr_block  = "0.0.0.0/0"
    instance_id = aws_instance.nat_instance.id
  }

  tags = {
    Name = "demo_route_private"
  }
}

resource "aws_route_table" "demo_route" {
  vpc_id = aws_vpc.demo_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo_gateway.id
  }

  tags = {
    Name = "demo_route_public"
  }
}
