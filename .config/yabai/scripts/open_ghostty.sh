#!/usr/bin/env bash

# Detects if iTerm2 is running
if ! pgrep -f "ghostty" >/dev/null 2>&1; then
  open -a "/Applications/Ghostty.app"
else
  # Create a new window
  script='tell application "ghostty" to create window with default profile'
fi
