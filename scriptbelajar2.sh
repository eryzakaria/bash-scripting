#!/bin/bash
grupsudo="marketing"
groups $1 | grep $grupsudo
if [ $? -ne 0 ]; then
echo "User $1 belum masuk grup marketing, kita masukkan terlebih dahulu.."
sudo usermod -aG $grupsudo $1
echo "Berhasil!"
else
echo "User $1 sudah masuk grup marketing"
fi
