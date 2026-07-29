#!/bin/bash

SESSION_NAME="Audio"

### Step 0: Check if tmux session already exists
if tmux has-session -t $SESSION_NAME 2>/dev/null; then
	echo "Session $SESSION_NAME already exists."
	tmux attach-session -t $SESSION_NAME
else

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
	tmux attach-session -t $SESSION_NAME
fi
