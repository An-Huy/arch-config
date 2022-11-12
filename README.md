<h1> Xmonad Installation and customization </h1>

- Installation:

```
sudo pacman -S git xorg-server xorg-apps xorg-xinit xorg-xmessage libx11 libxft libxinerama libxrandr libxss pkgconf xmonad xmonad-contrib xmobar picom nitrogen terminator firefox
cp $HOME/config/dotfiles/.xprofile $HOME/.xprofile	
cp $HOME/config/dotfiles/.xinitrc $HOME/.xinitrc
mkdir -p $HOME/.config/xmonad/	
cp $HOME/config/xmonad/xmonad.hs $HOME/.config/xmonad/
sudo pacman -S ttf-font-awesome		
cp $HOME/config/xmonad/xmobarrc $HOME/.xmobarrc	
```	
	
- run xmobar: xmobar &

<h1> ZSH installation and customization </h1>

- Install zsh
	
```
sudo pacman -S zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"		
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting	
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/ryanoasis/nerd-fonts.git && ./nerd-fonts/install.sh 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

- Change the .zshrc file

```
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(zsh-syntax-highlighting zsh-autosuggestions)
```
	
- Yay install		

```	
git clone https://aur.archlinux.org/yay.git && cd yay	
makepkg -si
```	

<h1>Nvim</h1> 
	
```	
sudo pacman -S neovim nodejs npm	
git clone https://github.com/AstroNvim/AstroNvim $HOME/.config/nvim && nvim +PackerSync	
```	
	
<h1>lf configuration</h1>	
	
```	
sudo pacman -S libxext libxres ffmpegthumbnailer imagemagick poppler wkhtmltopdf unzip unrar docx2txt ueberzug
yay -S lf epub-thumbnailer-git
mkdir $HOME/config/lf && cp $HOME/config/lf/lfrc $HOME/.config/lf/lfrc	
git clone https://github.com/cirala/lfimg.git && cd lfimg/ && make install
```
