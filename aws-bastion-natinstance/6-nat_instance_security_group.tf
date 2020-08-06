resource "aws_security_group" "nat_security_group" {
  name        = "vpc_nat"
  description = "vpc_nat Security Group"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = aws_vpc.demo_vpc.id

  tags = {
    Name = "NAT Security Group"
  }
}
