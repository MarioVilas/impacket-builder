#!/bin/bash

cd /usr/local/bin
for f in $(grep -l impacket *.py)
do
	python -m PyInstaller --noconfirm --clean --onefile --strip --distpath=/root/dist/ $f
done
