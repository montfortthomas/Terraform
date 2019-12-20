resource "google_compute_address" "static" {
  name = "ipv4-address"
}

data "google_compute_image" "centos_image" {
  family  = "centos-7"
  project = "centos-cloud"
}

resource "google_compute_instance" "instance_with_ip" {
  name         = "vm-instance"
  machine_type = "f1-micro"
  zone         = "us-east4-a"

  boot_disk {
    initialize_params {
      image = "${data.google_compute_image.centos_image.self_link}"
    }
  }

  network_interface {
    network = "default"

    access_config {
      nat_ip = "${google_compute_address.static.address}"
    }
  }

  provisioner "remote-exec" {
    inline = ["sudo yum install httpd -y -qq",
      "sudo systemctl start httpd",
    ]

    connection {
      type        = "ssh"
      user        = "jino"
      private_key = "${file("~/.ssh/google_cloud")}"
    }
  }
}

output "ip" {
  value = "${google_compute_address.static.address}"
}