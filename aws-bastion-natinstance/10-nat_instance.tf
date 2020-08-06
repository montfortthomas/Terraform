resource "aws_instance" "nat_instance" {
  ami                         = var.nat_ami
  availability_zone           = "${var.region}${var.available_zone}"
  instance_type               = "t2.micro"
  key_name                    = "JINO"
  vpc_security_group_ids      = [aws_security_group.nat_security_group.id]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  source_dest_check           = false

  tags = {
    Name = "Nat_instance"
  }
}
