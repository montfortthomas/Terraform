variable "jino" {
  type = "map"

  default {
    default     = "t2.micro"
    production  = "t2.micro"
    development = "m4.large"
  }
}