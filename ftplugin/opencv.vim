python <<EOF
import vim,os
def opencv_Init():
	vim.command("put %")
	nameline=vim.current.buffer[1]
	name=nameline.split('.')[0]
	vim.current.buffer[1]=''
	if os.path.isfile('./CMakeLists.txt'):
		pass
	else:
		fp=open("CMakeLists.txt",'w')
		fp.write('''
		cmake_minimum_required(VERSION 2.8)
		project( %s )
		find_package( OpenCV REQUIRED )
		include_directories( ${OpenCV_INCLUDE_DIRS} )
		add_executable(  %s DisplayImage.cpp )
		target_link_libraries( %s ${OpenCV_LIBS} )
		'''%(name,name,name));
	vim.command("f %s.cpp"%name) 
	vim.command("set filetype=cpp")
try:
	a=vim.current.buffer[5]
except IndexError:
	opencv_Init()
EOF
	
	


	
	
	

