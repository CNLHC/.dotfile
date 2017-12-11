#!/bin/bash
wget ftp://ftp.vim.org/pub/vim/unix/vim-8.0.tar.bz2 
tar jxvf vim-8.0.tar.bz2
cd vim80/
sudo apt-get install python-dev libncurses5-dev
./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ --enable-perlinterp --enable-gui=gtk2 --enable-cscope --enable-luainterp --enable-perlinterp --enable-multibyte --prefix=/usr
sudo make 
sudo make install


