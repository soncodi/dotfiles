
HISTCONTROL=ignoredups:ignorespace:erasedups
HISTIGNORE="pwd:ls:ll:cd:cd .."

PS1='\033[1;37m\W\033[0m$(__git_ps1 "|\033[0;33m%s\033[0m") '

PATH=$PATH:~/android-sdk/tools
PATH=$PATH:~/android-sdk/platform-tools

gsettings set org.gnome.desktop.interface enable-animations false

#####################################################################

#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
#alias ll="ls -alh"

#PATH="/usr/local/bin:/usr/local/sbin:$PATH"

#source /usr/share/git-core/git-prompt.sh
