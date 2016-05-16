#!/bin/bash

PROJ="/home/alex/projects"

# 1
tmux rename-window ""
tmux send-keys -t 0.0 "cd $PROJ/p1" C-m C-l
tmux split -t 0.0 -h -c "$PROJ/p1"
tmux send-keys -t 0.1 "mongo p1" C-m

# 2
tmux neww -n "" -c "$PROJ/p2"
tmux splitw -t 1.0 -h -c "$PROJ/p2"
tmux send-keys -t 1.1 "gulp" C-m

# 3
tmux neww -n "" -c "$PROJ/p3"
tmux splitw -t 2.0 -h -c "$PROJ/p3"
tmux send-keys -t 2.1 "gulp" C-m

tmux select-window -t 0
tmux select-pane -t 0
