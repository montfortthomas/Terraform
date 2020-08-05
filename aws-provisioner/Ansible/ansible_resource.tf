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
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y python
    sudo hostnamectl set-hostname server1
    EOF

  tags = {
    Name = "instance-${count.index + 1}"
  }

    provisioner "local-exec" {
        command = "echo ${self.public_ip} >> hosts" 
    }

}


resource "null_resource" "provisions" {
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu --private-key /home/jaye/Documents/test/Ansible/JINO.pem -i hosts test.yml -b"
    }
    depends_on = [aws_instance.demo_instance]
}


 variable "region" {
  default = "us-east-1"
}


# export AWS_ACCESS_KEY_ID="XDQ"
# export AWS_SECRET_ACCESS_KEY="370NCsM"
# export AWS_DEFAULT_REGION="us-east-1"
