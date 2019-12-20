resource "aws_instance" "jino_instance" {
  instance_type = "${lookup(var.jino, terraform.workspace)}"
  ami           = "${terraform.workspace == "production" ? "ami-0ac019f4fcb7cb7e6"  : "ami-011b3ccf1bd6db744" }"
  key_name      = "JINO_N"
}