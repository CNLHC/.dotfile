#coding:utf-8
import sys,os
reload(sys)
sys.setdefaultencoding('utf-8')
#Happy Coding
def autorefresh():
    b=os.popen('xdotool getactivewindow')
    pwid=b.readlines()[0].strip('\n').strip(' ')
    a=os.popen('xdotool search --name "Mozilla Firefox" ')#change if using different browser
    try:
        wid=a.readlines()[0].strip('\n').strip(' ')
    except IndexError:
        return
    os.system("xdotool windowactivate %s"%wid)
    os.system("xdotool key F5")
    os.system("xdotool windowactivate %s"%pwid)
autorefresh()




