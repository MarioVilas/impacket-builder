#!/bin/bash
set -e
set -x

cd "${0%/*}"

apt update
apt upgrade -y
apt install -y git wget xvfb wine64 winbind
apt autoremove -y

Xvfb :0 -screen 0 1024x768x16 &
wget -q https://www.python.org/ftp/python/2.7.16/python-2.7.16.amd64.msi
DISPLAY=:0.0 wine64 msiexec.exe /qn /i python-2.7.16.amd64.msi

wget -q https://bootstrap.pypa.io/get-pip.py
DISPLAY=:0.0 wine64 C:\\Python27\\python.exe get-pip.py

DISPLAY=:0.0 wine64 C:\\Python27\\python.exe -m pip install --upgrade pyinstaller pywin32 pyreadline impacket

mkdir -p /root/dist
