#!/usr/bin/env bash
printf "Intalling prerequisites....."

sudo pacman -Syy --noconfirm xorg xorg-server xorg-xrandr xorg-xinit xorg-xsetroot arandr xbindkeys pavucontrol blueman firefox dunst feh picom git wget curl wget neovim vim ttf-fira-code ttf-font-awesome otf-font-awesome powerline-fonts awesome-terminal-fonts lxappearance materia-gtk-theme xbindkeys playerctl pcmanfm ranger fbv eog deepin-screenshot gnome-screenshot mpv cheese android-file-transfer curtail otf-fira-mono noto-fonts-emoji gnu-free-fonts noto-fonts sddm 

paru -S papirus-icon-theme-git --noconfirm

printf "Installing DWM.....\n"
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

#DWM Login Screen Entry
#sudo cp config/dwm.desktop /usr/share/xsessions/dwm.desktop
#sudo systemctl enable sddm 

printf "\nSetting Up DWM"
git clone https://github.com/bleak-alpha/walls.git $HOME/Pictures/walls
feh --bg-fill $HOME/Pictures/walls/001.jpg
paru -S betterlockscreen --noconfirm
betterlockscreen -u $HOME/Pictures/walls/lock/001.jpg 
sudo systemctl enable betterlockscreen@$USER

printf "Restoring dotfiles....."
git clone https://github.com/bleak-alpha/dotfiles.git
rm -fr dotfiles/backup.sh && rm -fr dotfiles/restore.sh
cp -r dotfiles/* !(dotfiles/sddm/) $'HOME'/
sudo cp -r dotfiles/sddm/usr/lib/sddm.conf.d/default.conf /usr/lib/sddm.conf.d/default.conf
sudo cp -r dotfiles/sddm/usr/share/sddm/themes/sugar-candy/ /usr/share/sddm/themes/sugar-candy/ 
rm -fr dotfiles/
