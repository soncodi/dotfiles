
alias ll='ls -alh'

#source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

C_WHITE='\033[1;37m'
C_GREEN='\033[0;32m'
C_RESET='\033[0m'

PS1="${C_WHITE}\W${C_RESET}"'$(__git_ps1 "|${C_GREEN}%s${C_RESET}") '
