#!/bin/bash

jawaban="Y"
jawaban="y"

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
  sudo apt-get install -y nginx php php-mysql
  echo "Melakukan Installasi Database Server"
  sudo apt-get install -y mysql-server
  echo "Melakukan Installasi PHP"
  sudo apt install php libapache2-mod-php php-mysql
  echo "Installasi Selesai"
fi

read -p "Apakah anda mau download file ini ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
then
  echo -n "Silahkan masukan alamat github: "
  read github
  git clone $github
  echo "Download Berhasil"
fi

read -p "Mau Ekstrak File ? (Y/n) " ekstrak;
if [ $ekstrak == $jawaban ]
then
  echo "Melakukan Ekstrak"
  sudo unzip *.zip
  echo "Ekstrak File"
fi

read -p "Mau Memindahkan Data ? (Y/n) " data;
if [ $data == $jawaban ]
then
  echo "Memindahkan data"
  echo "=============================>"
  sudo rm -R /var/www/html/
  sudo cp -r */* /var/www/html/
  echo "Setup Selesai"
fi

