#!/bin/sh

PROJ="/media/Data/Projects"

# 1
tmux send-keys "cd $PROJ/proj1" C-m
tmux rename-window ""
tmux splitw -h
tmux send-keys "mongo p1" C-m

tmux selectp -t 0

# 2
tmux neww -n "" -c "$PROJ/proj2"
tmux select-window -t 1

tmux selectp -t 0
tmux splitw -h -c "$PROJ/proj2/src/assets/www"
tmux send-keys "python -m SimpleHTTPServer 8000"

tmux selectp -t 1
tmux splitw -c "$PROJ/proj3"

tmux selectp -t 0

# 3
tmux neww -n "" -c "$PROJ/proj4"
tmux select-window -t 2

tmux selectp -t 0
tmux splitw -h
tmux send-keys "mongo p4" C-m

tmux selectp -t 1
tmux splitw -c "$PROJ/proj4"
tmux send-keys "./run.sh"

tmux selectp -t 0

# 4
tmux neww -n "" -c "$PROJ/proj5"
tmux select-window -t 3
tmux splitw -h -c "$PROJ/proj5"
tmux send-keys "python -m SimpleHTTPServer 8080"

tmux selectp -t 0
