#!usr/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"	
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/ryanoasis/nerd-fonts.git && ./nerd-fonts/install.sh

if [ -f $HOME/.zshrc ]; 
then
    echo "File already exist, change file to .bak"
    sudo mv $HOME/.zshrc $HOME/.zshrc.bak && sudo cp $HOME/arch-config/dotfiles/.zshrc $HOME/.zshrc
    source $HOME/.zshrc
else
    sudo cp $HOME/arch-config/dotfiles/.zshrc $HOME/.zshrc
    source $HOME/.zshrc
fi
