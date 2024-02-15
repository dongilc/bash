#!/bin/sh
tmux new-session \; \
split-window -v -p 75 \; \
split-window -h -p 30 \; \
send-keys 'top' C-m \; \
select-pane -t 1 \; \
split-window -v \; \
select-pane -t 0 \; \
