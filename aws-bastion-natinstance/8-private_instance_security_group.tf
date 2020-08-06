resource "aws_security_group" "private_instance_security_group" {
  name        = "vpc_private_instance"
  description = "vpc_private_instance Security Group"

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
    Name = "Private_instance Security Group"
  }
}
