<h1> Xmonad Installation and customization </h1>

- Installation:

```
sudo pacman -S git xorg-server xorg-apps xorg-xinit xorg-xmessage libx11 libxft libxinerama libxrandr libxss pkgconf xmonad xmonad-contrib xmobar picom nitrogen terminator firefox
```

```
cp $HOME/config/dotfiles/.xprofile $HOME/.xprofile	
cp $HOME/config/dotfiles/.xinitrc $HOME/.xinitrc
```

```
mkdir -p $HOME/.config/xmonad/	
cp $HOME/config/xmonad/xmonad.hs $HOME/.config/xmonad/
```

```
sudo pacman -S ttf-font-awesome		
cp $HOME/config/xmonad/xmobarrc $HOME/.xmobarrc	
```	
	
- run xmobar: xmobar &
