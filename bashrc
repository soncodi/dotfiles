
HISTCONTROL=ignoredups:ignorespace:erasedups
HISTIGNORE="pwd:ls:ll:cd:cd .."

PS1='\033[1;37m\W\033[0m$(__git_ps1 "|\033[0;33m%s\033[0m") '

PATH=$PATH:~/android-sdk/tools
PATH=$PATH:~/android-sdk/platform-tools

gsettings set org.gnome.desktop.interface enable-animations false


man() {
  env \
  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
  LESS_TERMCAP_md=$(printf "\e[1;31m") \
  LESS_TERMCAP_me=$(printf "\e[0m") \
  LESS_TERMCAP_se=$(printf "\e[0m") \
  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
  LESS_TERMCAP_ue=$(printf "\e[0m") \
  LESS_TERMCAP_us=$(printf "\e[1;32m") \
  man "$@"
}
