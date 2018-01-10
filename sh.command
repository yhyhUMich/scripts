#shell command record - hang

#git
git remote add origin *repo.git
git clone *repo.git
git push -u origin master #first time push to remote repo
git push origin master

#vim
$ #move to line end
0 #move to line start
G #move to start of the last line 
12G #move to start of 12th line

de #del from cur the next word begin
dw #del from cur to cur word end
d$ #del from cur to line end
d0 #del from cur to line begin

ye #copy from cur the next word begin
yw #copy from cur to cur word end
y$ #copy from cur to line end
y0 #copy from cur to line begin

#tmux
tmux ls
tmux attach-session -t *
tmux new -s * #start new session
tmux detach #leave current session
tmux kill-server #close all session

ctrl B % #split up down
ctrl B " #split left right
ctrl B x #close current panel
ctrl B : #enter terminal


#shell
export ${VAR} #export this env_var to every shell environment from this

#!/bin/bash #tell use which shell to execute this sh script
source *.sh #execute shell file in the cur shell
*.sh #execute the shell file in sub shell

var_test = "test" #define var
unset var_test #release var
readonly var_test #set var as readonly
echo $var_test 
echo ${var_test}

#command 
yum install *
yum remove *
yum update

apt-get remove * #del *
apt-get remove --purge #del * and setting
apt-get autoremove --purge #del *, setting and dependency

apt-get update #update software source
apt-get upgrade #upgradee installed softwares

apt-get clean
apt-get autoclean #clean downloaded software package

shutdown -r now/10/-c #restart now/10min/cancel
poweroff / halt

tar --bzip2 -xf *tar.bz2 #unzip tar.bz2

#gcc
gcc -E hello.cpp -o hello.i #preprocess
gcc -s hello.cpp -o hello.s #preprocess and assembly
gcc -c hello.cpp -o hello.o #preprocess, assembly and compile
gcc hello.cpp -o hello #preprocess, assembly, compile and link generate exe
=
