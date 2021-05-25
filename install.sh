#!/bin/sh
printf "Installing and Setting Up DWM\n"
cd dwm-6.2/
sudo make clean install
cd .. && cd dmenu-5.0/
sudo make clean install
cd .. && cd slstatus/
sudo make clean install
cd .. && cd st-0.8.2/
sudo make clean install

#Laptop Touchpad restore 
#cd ..
#sudo cp 30-touchpad-Laptop-touchpad-conf.conf /etc/X11/xorg.conf.d/30-touchpad.conf
