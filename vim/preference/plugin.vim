"SuperTab
	let g:SuperTabRetainCompletionType=2
"NerdTree
	map <C-n> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Syntastic
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
	let g:mkdp_path_to_chrome = "open -a Safari"
    let g:syntastic_python_python_exec = '/usr/local/bin/python3.6'
"vim-latex
	set grepprg=grep\ -nH\ $*
	let g:tex_flavor='xelatex'
	let g:Tex_DefaultTargetFormat='pdf'
	let g:Tex_CompileRule_pdf='xelatex $*'
	let g:Tex_PromptedCommands='footnote,label,pageref,cite' "按下F7后的命令
	let g:Tex_TEXINPUTS = '/usr/share/texlive/texmf-dist/tex/latex/**,./**'
	let g:Tex_ViewRule_pdf= 'open'
"vim-markdown
	let g:vim_markdown_folding_disabled = 1
	let g:vim_markdown_override_foldtext = 0
	let g:vim_markdown_folding_style_pythonic = 1
	let g:vim_markdown_math = 1
"Markdown-preview 
	let g:mkdp_path_to_chrome = "firefox"
"YouCompleteMe
	let g:ycm_global_ycm_extra_conf="~/.vim/.ycm_extra_conf.py"
	let g:ycm_confirm_extra_conf = 0 	"不提示确认局部配置文件
	let g:ycm_min_num_of_chars_for_completion = 2 "第一个字符开始补全
	let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'pandoc' : 1,
      \ 'vimwiki' : 1,
      \ 'md' : 1,
      \ 'tex' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}	"禁用补全列表
	let g:ycm_enable_diagnostic_signs = 1
	let g:ycm_error_symbol = '!!'
	let g:ycm_warning_symbol = '>>'
	let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
	let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
	let g:ycm_key_invoke_completion = '<C-Space>'
    let g:ycm_server_python_interpreter = '/usr/bin/python3'

	let g:ycm_key_detailed_diagnostics = '<leader>d'
"Airline
	let g:airline_theme="solarized"
    let g:airline_powerline_fonts = 1
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#buffer_nr_show = 1
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	map <leader>1 :b 1<CR>
	map <leader>2 :b 2<CR>
	map <leader>3 :b 3<CR>
	map <leader>4 :b 4<CR>
	map <leader>5 :b 5<CR>
	map <leader>6 :b 6<CR>
	map <leader>7 :b 7<CR>
	map <leader>8 :b 8<CR>
	map <leader>9 :b 9<CR>
"	let g:airline_symbols.branch = ''
"	let g:airline_symbols.readonly = ''
"	let g:airline_symbols.linenr = ''
"VIqiniu
	let g:VIqiniu_Ak='OfXgfqWBOwHbrcyo6KpByhBUWaPQP8bFZ9qbtaWh'
	let g:VIqiniu_SK='oe1a_kOjKsxjQnty46m-ClQGRoHzPW5roLsj3Wjg'
	let g:VIqiniu_Bucket='blog'
	let g:VIqiniu_Domain='os794rlwi.bkt.clouddn.com/'
"VIpress
	let g:VIpress_username='CN_LHC'
	let g:VIpress_password='lhc8848444'
	let g:VIpress_url='http://www.cnworkshop.tech'
	let g:VIpress_api='http://www.cnworkshop.tech/xmlrpc.php'
"Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,markdown EmmetInstall
let g:user_emmet_leader_key='<C-K>'


