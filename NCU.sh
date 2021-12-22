#!/bin/bash
echo "Stop Klipper service"
sudo service klipper stop

cd neko-klipper-printer-config
echo "Start pull latest version"
git pull
cd ..

echo "Start NCU"
python neko-klipper-printer-config/NCU.py

echo "Start Klipper service"
sudo service klipper start