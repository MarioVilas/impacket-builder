#!/bin/bash

cd "${0%/*}"
cd .wine/drive_c/Python27/Scripts
for f in $(grep -l impacket *.py)
do
	wine C:\\Python27\\python.exe -m PyInstaller --noconfirm --clean --onefile --console --win-private-assemblies --distpath=/root/dist/ $f
done
