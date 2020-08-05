provider "aws" {}

resource "aws_instance" "demo_instance" {
  availability_zone = "us-east-1a"
  ami               = "ami-0a0ddd875a1ea2c7f"
  instance_type     = "t2.micro"
  key_name          = "JINO"
  count             = 1
  subnet_id         = "subnet-144d8572"
  vpc_security_group_ids      = ["sg-e263c8c6"]
  associate_public_ip_address = true

  tags = {
    Name = "instance-${count.index + 1}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y -qq",
      "sudo apt install apache2 -y -qq",
      "sudo systemctl start apache2",
    ]

    connection {
      type                = "ssh"
      private_key         = file("/home/jaye/Documents/test/JINO.pem")
      host                = element(aws_instance.demo_instance.*.public_ip, count.index)
      user                = "ubuntu"
      port                = 22
    }
    
  }

}


# export AWS_ACCESS_KEY_ID="XDQ"
# export AWS_SECRET_ACCESS_KEY="370NCsM"
# export AWS_DEFAULT_REGION="us-east-1"
# # terraform plan
