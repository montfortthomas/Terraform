resource "aws_ebs_volume" "example" {
  availability_zone = "${var.region}a"
  size              = "${element(var.volume,count.index)}"
  count             = "${length(var.volume)}"

  tags {
    Name = "${var.volume_name}_${count.index+1}"
  }
}

resource "aws_instance" "demo_instance" {
  availability_zone = "${var.region}a"
  ami               = "ami-0ac019f4fcb7cb7e6"
  instance_type     = "t2.micro"
  count             = "${length(var.volume)}"
  key_name          = "JINO_N"
  user_data         = "${file("jino.sh")}"

  tags {
    Name = "${var.insatnce_name}_${count.index+1}"
  }
}

resource "aws_volume_attachment" "volume_attach" {
  device_name = "/dev/sdh"
  volume_id   = "${element(aws_ebs_volume.example.*.id, count.index)}"
  instance_id = "${element(aws_instance.demo_instance.*.id, count.index)}"
  count       = "${length(var.volume)}"
}