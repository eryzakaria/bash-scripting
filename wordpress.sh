#!/bin/bash

jawaban="Y"

read -p "Apakah kamu yakin akan menginstall webserver (Apache2) ? (Y/n) " server;
if [ $server == $jawaban ]
then
  echo "Menyiapkan Installasi Web server"
  sudo apt-get update
  echo "Melakukan Installasi Webserver"
  sudo apt-get install -y apache2 php php-mysql
  echo "Melakukan Installasi Database Server"
  sudo apt-get install -y mysql-server
  echo "Melakukan Installasi PHP"
  sudo apt install php libapache2-mod-php php-mysql
  echo "Installasi Selesai"
fi

read -p "Apakah kamu yakin akan menginstall webserver (Nginx) ? (Y/n) " server;
if [ $server == $jawaban ]
then
  echo "Menyiapkan Installasi Web server"
  sudo apt-get update
  echo "Melakukan Installasi Webserver"
  sudo apt-get install nginx -y
  echo "Melakukan Installasi Database Server"
  sudo apt-get install -y mysql-server mysql-client
  echo "Melakukan Installasi PHP"
  sudo apt install php7.2 php7.2-gd php7.2-mysql php7.2-zip php7.2-fpm -y
  echo "Installasi Selesai"
fi

read -p "Apakah anda mau menginstall webserver (Wordpress) ? (Y/n) " wordpress;
if [ $jawaban == $wordpress ];
then
  ls /var/www/html/
  echo "Install Wordpress"
  sudo wget https://wordpress.org/latest.tar.gz
  echo "Ekstrak File"
  sudo tar -xzvf latest.tar.gz
  mv wordpress/* /var/www/html/
  cd wordpress
  sudo cp wp-config-sample.php wp-config.php
  sudo chown -R www-data:www-data /var/www/html/
fi