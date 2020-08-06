resource "aws_internet_gateway" "demo_gateway" {
  vpc_id = aws_vpc.demo_vpc.id

  tags = {
    Name = "demo_gateway"
  }
}
