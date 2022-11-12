#!usr/bin/bash

sudo pacman -S --noconfirm xorg xorg-xinit bspwm sxhkd rofi terminator picom 
sudo pacman -S --noconfirm arandr feh dunst redshift flameshot stalonetray neofetch jgmenu 
yay -S --noconfirm polybar pacman-contrib pulseaudio ttf-font-awsome siji-git alsa-utils		
cp -r $HOME/arch-config/wallpaper/ $HOME/

if [ -f $HOME/.xinitrc ]; then
    echo "File already exist, change file to .bak"
    sudo mv $HOME/.xinitrc $HOME/.xinitrc.bak && sudo cp $HOME/arch-config/dotfiles/.xinitrc $HOME/.xinitrc
else
    sudo cp $HOME/arch-config/dotfiles/.xinitrc $HOME/.xinitrc
fi

if [ -d $HOME/.config/ ]; then
	cp -r $HOME/arch-config/.config/* $HOME/.config/
else
    mkdir -p $HOME/.config/ && cp -r $HOME/arch-config/.config/* $HOME/.config/
fi	
