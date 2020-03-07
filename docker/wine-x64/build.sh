#!/bin/bash

cd "${0%/*}"
cd impacket/examples
for f in *.py
do
	wine C:\\Python27\\python.exe -m PyInstaller --noconfirm --clean --onefile --console --win-private-assemblies --distpath=/root/dist/ $f
done
