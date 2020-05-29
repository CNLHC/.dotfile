#!/bin/bash

sudo apt-get install -y -q=2  python\
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


# install dein
if [ ! -d  ~/.cache/dein ]; then
    echo "get dein"
    curl -s https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | bash /dev/stdin  ~/.cache/dein 
else
    echo "dein exists"
fi


if [ ! -d ~/.oh-my-zsh/ ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "oh-my-zsh exists"
fi

function check_and_add(){
    tc=$(grep -c "$1" $2 )

    if [  $tc -le 0  ]; then
        echo "$1" >> $2
    else
        echo \"$1\" already exists in $2
    fi
}

sed -i -E 's/plugins=[(](.+)[)]//' ~/.zshrc
check_and_add "plugins=(git vi-mode)" ~/.zshrc

sed -i -E 's/^# (COMPLETION_WAITING_DOTS)=(.+)$/\1=\"true\"/' ~/.zshrc

check_and_add "source-file ~/.dotfile/tmux/tmux.conf" ~/.tmux.conf
check_and_add "source ~/.dotfile/vim/vimrc" ~/.config/nvim/init.vim

check_and_add "source ~/.dotfile/zsh/alias.zsh" ~/.zshrc
check_and_add "bindkey \"^P\" up-line-or-beginning-search" ~/.zshrc
check_and_add "bindkey \"^N\" down-line-or-beginning-search" ~/.zshrc


