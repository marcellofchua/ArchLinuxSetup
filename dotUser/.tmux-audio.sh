#!/bin/zsh

SESSION_NAME="Audio"

### Step 0: Check if tmux session already exists
if tmux has-session -t $SESSION_NAME 2>/dev/null; then
	echo "Session $SESSION_NAME already exists."
	tmux attach-session -t $SESSION_NAME
else

### Step 1: Create tmux sessions if it doesn't exist yet
	tmux new-session -d -s Audio

### Configure Windows
	tmux split-window -h
	tmux split-window -v
	tmux select-pane -t 0
	tmux split-window -v
	tmux resize-pane -U 30

### Start pulsemixer
	tmux send-keys -t 0 pulsemixer ENTER

### Start yt-x
	tmux select-pane -t 1
	tmux send-keys -t 1 bluetui ENTER

### Start klok
	tmux select-pane -t 2
	tmux send-keys -t 2 peaclock ENTER

### Start cava
	tmux select-pane -t 3
	tmux send-keys -t 3 cava ENTER

### Step 2: Attach to tmux sessions
	tmux attach-session -t $SESSION_NAME
fi
