#!/bin/bash

cd "${0%/*}"
cd impacket/examples
for f in *.py
do
	python -m PyInstaller --noconfirm --clean --onefile --strip $f
done
