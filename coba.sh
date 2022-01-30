#!/bin/bash

jawaban="Y"

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
  sudo rm /var/www/html/*
  sudo rm -R /var/www/html/*
  sudo mv sosial-media-master/* /var/www/html
  echo "Setup Selesai"
fi