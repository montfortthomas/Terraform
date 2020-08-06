resource "aws_instance" "bastion_instance" {
  ami                         = var.bastion_ami
  availability_zone           = "${var.region}${var.available_zone}"
  instance_type               = "t2.micro"
  key_name                    = "JINO"
  vpc_security_group_ids      = [aws_security_group.bastion_security_group.id]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true

  tags = {
    Name = "bastion_host"
  }
}
