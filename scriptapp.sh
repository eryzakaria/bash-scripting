#!/bin/bash

jawaban="Y"
read -p "Apakah kamu yakin akan menginstall webserver ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
	then
	echo "Menyiapkan Installasi Web server"
	sudo apt-get update
	echo "Melakukan Installasi Webserver"
	sudo apt-get install -y apache2 php php-mysql
fi

read -p "Apakah kamu yakin akan menginstall Database Server ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
	then
	echo "Melakukan Installasi Database Server"
	sudo apt-get install -y mysql-server
	echo "Installasi Selesai"
fi
