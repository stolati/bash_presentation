#!/usr/bin/env bash

# Test if the TMUX variable is set
if [[ -z "${TMUX:-}" ]]; then
  # Launch tmux with the current script as command
  tmux new "$0 $*"
  echo "tmux ls => list sessions"
  echo "tmux attach => return to the session"
  exit # quit the tmux launch
fi

# Inside the tmux command
echo "commands:"
echo "Ctrl-B % => split vertically"
echo "Ctrl-B o => switch pane"
echo "Ctrl-B c => create new window"
echo "Ctrl-B {0...9} => switch window"
echo "Ctrl-B d => exit session without killing it"
echo "tmux ls, tmux attach => go back again"

# We are replacing the current command with bash
exec bash --login




