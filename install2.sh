#! /bin/bash

jawaban="Y"

read -p "Apakah kamu yakin akan menginstall webserver ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
then
echo "Menyiapkan Installasi Web server"
sudo apt-get update
echo "Melakukan Installasi Webserver"
sudo apt-get install -y apache2 php php-mysql
echo "Melakukan Installasi Database Server"
sudo apt-get install -y mysql-server
echo "Installasi Selesai"
exit 0
else
echo "Installasi dibatalkan"
exit 1
fi
