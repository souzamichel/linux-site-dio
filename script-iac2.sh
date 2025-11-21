#!/bin/bash

echo "update"
apt update -y

echo "upgrade"
apt upgrade -y

acho "install apache"
apt install apache2 -y

echo "install unzip"
apt install unzip -y

echo "start apache2"
systemctl start apache2

echo "baixar main.zip"
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive-refs/heads/main.zip

echo "unzip main.zip"
unzip main.zip
cd linux-site-dio-main/

echo "copiar para var www hml"
cp -R * /var/www/html/
