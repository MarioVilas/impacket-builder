#!/bin/bash
set -e
set -x

cd "${0%/*}"

apt update
apt upgrade -y
apt install -y git wget python python-pip upx-ucl
apt autoremove -y

python -m pip install --upgrade pip
pip install --upgrade pyinstaller impacket

git clone https://github.com/SecureAuthCorp/impacket.git

mkdir -p /root/dist
