#!/bin/bash

# Restart wrapper for the emote bot API
# This ensures the app restarts automatically if it crashes

while true; do
  echo "Starting Emote Bot API..."
  python app.py
  exit_code=$?
  
  if [ $exit_code -eq 0 ]; then
    echo "Application exited normally."
    break
  else
    echo "Application crashed with exit code $exit_code. Restarting in 5 seconds..."
    sleep 5
  fi
done
