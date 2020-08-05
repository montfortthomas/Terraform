provider "aws" {}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCywmouSZUSxC1f7ACJq6YPqPkCNJBvAI+BWHUFjNxD+elAAx6Vuu1tGNubWvU3ftXcXwN9GLpvwRWXJDvb57Tq0/E/r9UYNveILMip4UZd57mNQEDy/5Q85WL/JxUMiVvQLGhh714qT8ClQSc8vRK+hDyLaR+WOqC+sIkILp3vimYn8qzmqQjOHkpEkW5EiVfdsKrklrLW48wtqyABtgmBa8yR55zlCGwhlyOvKK5aZZDJlsF62qkIFnO3U5ZOLELfUCl5giXC1G+f7/Nm6vcOnnRrjNbPZ/tcDdvre3TOKDUCfsSmE0+KFqYwD1klwbT1gX5dmsU3O7q8PGdB4lf1kfMtsraHVP+Q9wODYD1MgIydjPq8/edxkmHYCnTvNqaLL3Li9RDkNJEqTnBCGsW0eX8VdOO4pksuEb7i+AJ3v8iA28GYtL3YV2V375e5P0BhoffwAzL/BxoDpQiK/cv+kKvsll7D6uHLdZ6dpIWZHbtL1lknqQIAXZ9gPEUmeeE= jaye@parrot"
}


resource "aws_instance" "demo_instance" {
  availability_zone = "us-east-1a"
  ami               = "ami-0a0ddd875a1ea2c7f"
  instance_type     = "t2.micro"
  key_name          = "deployer-key"
  count = var._count 
  tags = {
    Name = "instance-${count.index + 1}"
  }
}

variable "_count" {
default = 1
 }

 variable "region" {
  default = "us-east-1"
}

variable "tags" {
  type = map
  default = {
    Name = "HelloWorld"
  }
}

output "public_ip" {
    value = aws_instance.demo_instance.*.public_ip
}


# export AWS_ACCESS_KEY_ID="UXBBXDQ"
# export AWS_SECRET_ACCESS_KEY="31eg2sYJk70NCsM"
# export AWS_DEFAULT_REGION="us-east-1"

