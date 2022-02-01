#!/bin/bash

jawaban="Y"

read -p "Konfigurasi Database Mysql ? (Y/n) " pilih;
if [ $jawaban == $pilih ]
then
    echo -n "Masukan User dan Pass : "
    read user
    sudo mysql -u $user -p 
    exit
fi
