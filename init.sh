#!/bin/bash
sudo apt install python\
		 python3\
		 python-pip\
		 python3-pip\
		 git\
		 build-essential\
		 nvim\
		 zsh\
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle &

echo 'source ~/.vim/.vimrc' >  $HOME/.vimrc
echo 'source ~/.vim/.zshrc' >  $HOME/.zshrc
mkdir $HOME/pip
cat '[global]\nindex-url = https://pypi.tuna.tsinghua.edu.cn/simple' > $HOME/.pip/pip.config

