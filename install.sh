#!/usr/bin/env bash
printf "Intalling prerequisites....."

sudo pacman -Syy --noconfirm xorg xorg-server xorg-xrandr xorg-xinit xorg-xsetroot arandr xbindkeys pavucontrol blueman firefox thunderbird dunst feh picom git wget curl wget neovim vim ttf-fira-code ttf-font-awesome otf-font-awesome powerline-fonts awesome-terminal-fonts lxappearance materia-gtk-theme xbindkeys playerctl pcmanfm deepin-screenshot otf-fira-mono noto-fonts-emoji gnu-free-fonts noto-fonts 

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
