variable "region" {
  default     = "us-east-1"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
}

variable "public_subnet" {
  default = "10.0.1.0/24"
}

variable "available_zone" {
  default = "a"
}

variable "bastion_ami" {
  default = "ami-0ac019f4fcb7cb7e6"
}

variable "instance_count" {
  default = 2
}

variable "instance_tags" {
  type = list
  default = ["app-server", "db-server"]
}

# variable "ports" {
#   type = map(list(string))
#   default = {
#     "22" = [ "0.0.0.0/0" ]
#     "80" = [ "0.0.0.0/0" ]
#     "8080" = [ "0.0.0.0/0" ]
#     "443" = [ "0.0.0.0/0" ]
#   }
# }