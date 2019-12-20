variable "region" {
  default = "us-east-1"
}

variable "volume" {
  type    = "list"
  default = ["1", "2", "3"]
}

variable "volume_name" {
  default = "Ebs_Volume"
}

variable "insatnce_name" {
  default = "demo"
}