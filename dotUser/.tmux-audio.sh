#!/bin/bash

### Step 0: Check if tmux session already exists

### Step 1: Create tmux sessions if it doesn't exist yet
tmux new-session -d -s Audio

### Configure Pulsemixer window
tmux split-window -v
tmux resize-pane -U 25
tmux send-keys -t 0 pulsemixer ENTER

### Configure yt-x window
tmux split-window -h
tmux send-keys -t 1 yt-x ENTER

### Configure cava window
tmux send-keys -t 2 cava ENTER

### Step 2: Attach to tmux sessions
tmux attach
