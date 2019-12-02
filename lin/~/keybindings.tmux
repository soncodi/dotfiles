
# ~/.byobu/keybindings.tmux

unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

unbind-key -n F6
#set -g pane-border-fg "#999999"
#set -g pane-active-border-fg "#ffffff"
#set -g pane-active-border-bg "#000000"
set -g pane-active-border-style bg="#000000",fg="#ffffff"
