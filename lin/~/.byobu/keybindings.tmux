
# ~/.byobu/keybindings.tmux

unbind-key -n C-a
set -g prefix ^A
set -g prefix2 F12
bind a send-prefix

unbind-key -n F2
unbind-key -n F6

#set -g pane-active-border-style bg="#000000",fg="#ffffff"
#set -g pane-active-border-style bg="#171421",fg="#ffffff"
set -g pane-active-border-style fg="#ffffff"

#set-option -g mouse on
