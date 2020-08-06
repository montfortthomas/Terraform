
# Public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.demo_vpc.id
  cidr_block        = var.public_subnet
  availability_zone = "${var.region}${var.available_zone}"
  tags = {
    Name = "demo-public"
  }
}


# private aws_subnet

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.demo_vpc.id
  cidr_block        = var.private_subnet
  availability_zone = "${var.region}${var.available_zone}"
  tags = {
    Name = "demo-private"
  }
}
