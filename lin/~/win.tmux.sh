#!/bin/bash

set -eu

PROJ="/home/user/projects"

# 1
tmux rename-window ""
tmux send-keys -t 0.0 "cd $PROJ/p1" C-m C-l
tmux split -t 0.0 -h -c "$PROJ/p1"
tmux send-keys -t 0.1 "mongo p1" C-m

# 1
tmux rename-window ""
tmux send-keys -t 0.0 "cd $PROJ/p2" C-m C-l
tmux splitw -t 0.0 -h -c "$PROJ/p2"
tmux splitw -t 0.1 -v -c "$PROJ/p2"
tmux send-keys -t 0.1 "npm run p2u" C-m
tmux send-keys -t 0.2 "npm run p2a" C-m

# 2
tmux neww -n "" -c "$PROJ/p3"
tmux splitw -t 1.0 -h -c "$PROJ/p3"
tmux splitw -t 1.1 -v -c "$PROJ/p3"
tmux send-keys -t 1.1 "npm run dev" C-m
tmux send-keys -t 1.2 "npm run watch" C-m

tmux select-window -t 0
tmux select-pane -t 0
