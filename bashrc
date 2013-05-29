HISTCONTROL=ignoredups:ignorespace:erasedups
HISTIGNORE="pwd:ls:ll:cd:cd ..:clear"

#alias ls='ls --color'
#alias ll='ls -l'

PS1='\033[1;37m\W\033[0m$(__git_ps1 "|\033[0;33m%s\033[0m") '

#source ~/.git-prompt.sh

