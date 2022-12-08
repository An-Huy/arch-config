#!usr/bin/bash		
	
# Basic  utils	
sudo pacman -Syu --noconfirm curl wget byobu firefox
git clone https://aur.archlinux.org/yay.git $HOME/yay/
cd $HOME/yay/ && makepkg -si	

#bspwm and polybar
bash $HOME/arch-config/scripts/wm.sh

# AstroNvim	
sudo pacman -S --noconfirm neovim nodejs npm	
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim && nvim +PackerSync

# Zsh
sudo pacman -S --noconfirm zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"	

sudo reboot now		
