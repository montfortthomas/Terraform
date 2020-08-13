#!/bin/bash
sudo apt update -y
sudo apt install apache2 curl git -y
sudo systemctl start apache2
sudo git clone  https://github.com/jinoj/html.git /mnt/
sudo mv /mnt/* /var/www/html/