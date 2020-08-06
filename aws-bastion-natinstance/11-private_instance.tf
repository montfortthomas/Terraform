resource "aws_instance" "private_instance" {
  ami                         = var.bastion_ami
  availability_zone           = "${var.region}${var.available_zone}"
  instance_type               = "t2.micro"
  key_name                    = "JINO"
  vpc_security_group_ids      = [aws_security_group.private_instance_security_group.id]
  subnet_id                   = aws_subnet.private_subnet.id
  associate_public_ip_address = false

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install nginx -y",
      "sudo systemctl start nginx",
    ]

    connection {
      type                = "ssh"
      private_key         = file("/home/jaye/Desktop/testq/JINO.pem")
      bastion_host        = aws_instance.bastion_instance.public_ip
      bastion_user        = "ubuntu"
      bastion_port        = 22
      bastion_private_key = file("/home/jaye/Desktop/testq/JINO.pem")
      host                = aws_instance.private_instance.private_ip
      user                = "ubuntu"
      port                = 22
    }
  }

  tags = {
    Name = "web_server"
  }
}



# export AWS_ACCESS_KEY_ID="AKIAJWWODR35PYCGCTRQ"
# export AWS_SECRET_ACCESS_KEY="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"
# export AWS_DEFAULT_REGION="us-east-1"