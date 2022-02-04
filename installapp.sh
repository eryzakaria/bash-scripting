#!/bin/bash
jawaban="Y"
read -p "Apakah kamu yakin akan melakukan setup Aplikasi Web ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
then
echo "=============================>"
echo "Downloading Data"
echo "=============================>"
cd
rm -f master.zip
rm -R sosial-media-master
wget https://github.com/zaki14-afk/sosial-media/archive/master.zip
echo "=============================>"
echo "Ekstrak File"
echo "=============================>"
sudo apt install unzip
unzip master.zip
echo "=============================>"
echo "Memindahkan data"
echo "=============================>"
sudo rm /var/www/html/*
sudo rm -R /var/www/html/*
sudo mv sosial-media-master/* /var/www/html
echo "Setup selesai"
exit 0
else
echo "Setup dibatalkan"
exit 1
fi
