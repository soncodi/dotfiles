
HISTCONTROL=ignoredups:ignorespace:erasedups
HISTIGNORE="pwd:ls:ll:cd:cd ..:clear"

alias ls='ls --color'
alias ll='ls -l'

# git-bash + console2
PS1='\[\033]0;\W\007\033 \W$(__git_ps1 "\[\033[33m:%s\033[0m\]") # '

# server
#PS1="[\e[0;31m\u@\h\e[m \W]\$ "
