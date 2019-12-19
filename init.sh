#!/bin/bash
sudo apt install -y  python\
		 python3\
		 python-pip\
		 python3-pip\
         curl\
		 git\
		 build-essential\
		 neovim\
		 zsh

if [ ! -d ~/.config/nvim ]; then
    echo "make nvim config dir"
    mkdir -p ~/.config/nvim;
fi

echo "source-file ~/.dotfile/tmux/tmux.conf" > ~/.tmux.conf
echo "source ~/.dotfile/vim/vimrc" > ~/.config/nvim/init.vim

if [ ! -d  ~/.config/nvim/bundle/Vundle.vim ]; then
    echo "get vundle"
    git clone https://github.com/VundleVim/Vundle.vim ~/.config/nvim/bundle/Vundle.vim
else
    echo "vundle exists"
fi

if [ ! -d ~/.oh-my-zsh/ ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "oh-my-zsh exists"
fi


