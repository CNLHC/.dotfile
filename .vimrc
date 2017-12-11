"====================一些常规配置====================
set expandtab
set encoding=utf-8
source $HOME/.vim/profile/compile.vim
source $HOME/.vim/profile/multisystem.vim
source $HOME/.vim/profile/typedect.vim
set background=dark
syntax on
filetype on
set modelines=0		
set nocompatible	
set backspace=2		
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smartindent
set foldmethod=indent
set helpheight=20
autocmd! bufwritepost .vimrc source $HOME/.vim/.vimrc
"======================键盘映射======================
let mapleader= '\'
map <F5> :call Compile()<CR>
map <F6> :call Run()<CR>
map <F7> :call Debug()<CR>
map <F3> :call Change_Python_Edition('3')
map <F2> :call Change_Python_Edition('2')

nnoremap <silent> <leader>ee :e $HOME/.vim/.vimrc<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>c :call Compile()<CR><CR>:call Run()<CR>
"======================插件管理======================
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
	"MyPlugin
	Bundle 'SuperTab'
	Plugin 'gmarik/vundle'
    "Plugin 'CNLHC/VIpress'
	"Plugin 'CNLHC/VIqiniu'
	Plugin 'scrooloose/nerdtree'
	"Plugin 'scrooloose/syntastic'
	"Plugin 'plasticboy/vim-markdown'
	"Plugin 'isnowfy/python-vim-instant-markdown'
	"Plugin 'Valloric/YouCompleteMe'
	"Plugin 'vim-airline/vim-airline'
	"Plugin 'vim-airline/vim-airline-themes'
	Plugin 'mattn/emmet-vim'
	Plugin 'vim-latex/vim-latex'
	Plugin 'tpope/vim-surround'
	"Blog.vim can't be manged by vundle
	source $HOME/.vim/profile/plugin.vim
filetype plugin indent on 
"=====================gvim配置======================
	set guioptions-=m  "remove menu bar  
    set guioptions-=T  "remove toolbar  
    set guioptions-=r  "remove right-hand scroll bar  
    set guioptions-=L  "remove left-hand scroll bar</span>  
colorscheme desert
