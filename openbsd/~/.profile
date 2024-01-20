
HISTCONTROL=ignoredups:ignorespace

PS1='\e[38;5;172m\]\h\e[00m\]:\033[1;37m\W\033[0m\\$ '

alias ls='ls -F'
alias ll='ls -alh'
#alias tmux="tmux attach-session || tmux new-session"


if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  if [ -z "$TMUX" ]; then
    tmux attach-session || tmux new-session
    exit
  fi
fi

