":help feature-list
func! Mysys()
	if has("macunix")
		return "MAC"
	elseif has("unix")
		return "LINUX"
	elseif has("win32")
		return "windows"
	endif
endfunc
