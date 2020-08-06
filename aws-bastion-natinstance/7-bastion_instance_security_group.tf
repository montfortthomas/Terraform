resource "aws_security_group" "bastion_security_group" {
  name        = "vpc_bastion"
  description = "vpc_bastion Security Group"

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
    Name = "bastion Security Group"
  }
}
