variable "region" {
  default     = "us-east-1"
  description = "AWS region for hosting our your network"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "CIDR for vpc"
}

variable "public_subnet" {
  default = "10.0.1.0/24"
}

variable "private_subnet" {
  default = "10.0.2.0/24"
}

variable "available_zone" {
  default = "a"
}

variable "bastion_ami" {
  default = "ami-0ac019f4fcb7cb7e6"
}

variable "nat_ami" {
  default = "ami-00a9d4a05375b2763"
}

# export AWS_ACCESS_KEY_ID="HFHY6Q"
# export AWS_SECRET_ACCESS_KEY="mrLzEP"
# export AWS_DEFAULT_REGION="us-east-1"