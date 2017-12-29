#shell command record - hang

#git
git remote add origin *repo.git
git clone *repo.git
git push -u origin master #first time push to remote repo
git push origin master

#vim

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

#command 
yum install *
yum remove *
yum update

