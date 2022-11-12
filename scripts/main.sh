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

# Lf	
sudo pacman -S --noconfirm libxext libxres ffmpegthumbnailer imagemagick poppler wkhtmltopdf unzip unrar docx2txt ueberzug	
yay -S --noconfirm epub-thumbnailer-git lf	

# Zsh
bash $HOME/arch-config/scripts/zsh.sh

sudo reboot now		
