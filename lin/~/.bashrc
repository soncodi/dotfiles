
PS1='\033[1;37m\W\033[0m$(__git_ps1 "|\033[0;33m%s\033[0m") '
LS_COLORS='rs=0:di=01;94:'

alias ll='ls -alh'
#alias code='GTK_IM_MODULE="xim" code'

stty -ixon

export PATH="${HOME}/.npm-global/bin:$PATH"
