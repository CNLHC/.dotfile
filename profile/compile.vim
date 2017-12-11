func! Change_Python_Edition(ver)
    if a:ver == '2'
        echo "change to py2"
        let g:Compile_Python="python"
        let g:syntastic_python_python_exec = '/usr/local/bin/python2.7'
    elseif a:ver =='3'
        echo "change to py3"
        let g:Compile_Python="python3"
        let g:syntastic_python_python_exec = '/usr/local/bin/python3'
    endif
endfunc 
func! Compile_Tex()
	exec "w"
	let Compile_Cmd="!latex "
	let Compile_flag=""
	exec Compile_Cmd." % ".Compile_flag
endfunc
func! Compile_Graphviz()
	exec "w"
	let Compile_Cmd="!dot "
	let Compile_flag="-Tjpeg -o %<.jpeg"
	exec Compile_Cmd." % ".Compile_flag
endfunc

func! Compile_Gpp()
	exec "w"
	let Compile_Cmd="!g++ "
	let Compile_flag=" -g -o %<"
	exec Compile_Cmd." % ".Compile_flag
endfunc
func! Compile_Gcc()
	exec  "w"
	let Compile_Cmd="!gcc "
	let Compile_flag=" -g -o %<"
	exec Compile_Cmd." % ".Compile_flag
endfunc
func! Compile_Markdown()
	exec  "w"
	let Compile_Cmd="!pandoc  "
	let Compile_flag=" -o %<.html"
	exec Compile_Cmd." % ".Compile_flag

endfunc
func! Compile()
	exec "w"
	if DetectMakeFile()==1
		exec "make"
	else
		if &filetype == "cpp"
			exec "call Compile_Gpp()"
		elseif &filetype == "c"
			exec "call Compile_Gcc()"
		elseif &filetype == "python"
			exec "call Run()"
		elseif &filetype == "markdown"
			exec "call Compile_Markdown()"
		elseif &filetype== 'graphviz'
			exec "call Compile_Graphviz()"
		elseif &filetype== 'Tex'
			exec "call Compile_Tex()"
		endif
	endif
endfunc
func! Run()
	if &filetype == "python3"
		exec "!python3 %"
	elseif &filetype== "python"
		exec "!".g:Compile_Python." % "
	elseif &filetype== "graphviz"
		exec "!display %<.jpeg"
	elseif &filetype == "markdown"
		exec "!firefox %<.html"
	elseif &filetype == "tex"
		if Mysys()=="MAC"
			exec "!open %<.pdf"
		endif
	else
		exec "! ./%<"
	endif
endfunc
func! DetectMakeFile()
	if filereadable("MakeFile")
		return 1
	else
		return 0
	endif 
endfunc

func! Debug()
	exec "w"
	exec "!sudo gdb %<"
endfunc 

