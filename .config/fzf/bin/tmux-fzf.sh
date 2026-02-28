#!/usr/bin/env bash

session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf)

if [[ -n "$session" ]]; then
  if [[ -n "$TMUX" ]]; then
    tmux switch-client -t "$session"
  else
    tmux attach -t "$session"
  fi
fi
