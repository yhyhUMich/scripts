#shell command record - hang

# scp
scp -P 50022 -r dir_source hang@11.11.11.11:dir_target

#ssh-keygen
ssh-keygen -t rsa -C "hangyuan@umich.edu"

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
gg #move the first line

10 | #move to the 10th column
10 h/j/k/l #move 10 times in a direction

f w #find the next w word in the line
F w #fine the previous w word in the line

ctrl G #show the line position

de #del from cur the next word begin
dw #del from cur to cur word end
d$ #del from cur to line end
d0 #del from cur to line begin
D #del from cur to line end

ye #copy from cur the next word begin
yw #copy from cur to cur word end
y$ #copy from cur to line end
y0 #copy from cur to line begin

u #undo
ctrl r #redo

/ word #find word
n shift n #continue search next or previous
* #search the cursor word next
# #search the cursor word previous

w #move to the next word
b #move to the previous word
o #start a new line

zo #open current fold
zR #open All fold
zc #close fold
zM #close all fold
zj #move to next fold
zk #move to previous fold

i #insert before the current cursor
r #repace the current cursor
a #append after the current cursor

Crtl - v #enter the column edit mode

"+yy #copy the current line into system reg
"+p #paste the system reg into vim

#tmux
tmux ls
tmux attach-session -t *
tmux new -s * #start new session
tmux detach #leave current session
tmux kill-server #close all session

ctrl B % #split left right
ctrl B " #split up down 
ctrl B x #close current panel
ctrl B : #enter terminal

#shell
export ${VAR} #export this env_var to every shell environment from this

#!/bin/bash #tell use which shell to execute this sh script
source *.sh #execute shell file in the cur shell within the same process inherit all the value
./*.sh #execute the shell file in sub shell, other process, all the value define in the subshell won't exist in the call shell
bash #same with ./
sh #if sh->bash then same with ./

var_test="test" #define var remember without space 
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

tar xzf *.tar.gz -C /opt #x:extract z:using gunzip f:using the following archive file -C change dir to /opt

env 	#list all environment variables
which 	#locate the command

find <dir> -name 'name*' -ls	#find file with name name* in dir and ls it
find . -type f -mmin -10		#find in current dir type is regular file which has been modified in the last 10 min

wc -l `find . -name "*.*"` count number of lines of all the files in the current dir
wc file #count words bytes lines of a file

locate /etc/sdf	#locate=find by name, find in dir /etc with file name start with sdf
locate -i ~/cma #find by name in home dir with cma start name ignore case

whereis grep #find binary file man file and source file

which gcc #find the first position of command gcc in PATH 

type grep #find whether command grep is a shell builtin or a external binary

grep -rni name #find the code lines with name, regard case, print line number, recursively search subdir

grep -rni name1 | grep -v name2 #find code lines with name1 and without name2

grep -rni -A 5 -B 5 name  #find code lines with name, also print after and before 5 lines

ctrl + # increase the screen
ctrl - # decrease the screen
ctrl - # scale to original screen

ctrl insert #copy from terminal
shift insert #insert

command ls #execute a command
command -v ls #show ls's execute path

#gcc
gcc -E hello.cpp -o hello.i #preprocess
gcc -s hello.cpp -o hello.s #preprocess and assembly
gcc -c hello.cpp -o hello.o #preprocess, assembly and compile
gcc hello.cpp -o hello #preprocess, assembly, compile and link generate exe
gcc -std=c++11 hello.cpp -o hello #...., using c+11

#cmake
cmake -H. -Bbuild #generate cmake binary tree in "build" dir using source file in "." dir -H:CMAKE_SOURCE_DIR  -B:CMAKE_BINARY_DIR

cmake --build build #build cmake generated binary tree


#system
/etc/init.d/** #control service by its init scripts

service rsysconifg #call the service config file under /etc/init.d
service --status-all #show all status of the stand alone service

service crond restart
/etc/init.d crond restart #restart the crond daemon in two methods

netstat -tulpn #show all the service that support network that listening on certain port

netstat -lnp #show the listening services and active socket 

sysv-rc-conf --list | grep '5:on' #find all the services that be set to turn on in level 5 mode

#if we want to add our own service as would be run when computer boot we use the command sysv-rc-conf --add/--del
