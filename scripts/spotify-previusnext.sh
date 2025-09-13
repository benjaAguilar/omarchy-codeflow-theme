#!/bin/bash

action=$1

if [ "$action" = "next" ]; then
  playerctl --player=spotify next
  notify-send "Played next song."
elif [ "$action" = "previous" ]; then
  playerctl --player=spotify previous
  notify-send "Played previous song."
fi

status=$(playerctl --player=spotify status)

if [ "$status" != "" ]; then
  if [ "$action" = "rendernext" ]; then
    echo "||&gt;"
  elif [ "$action" = "renderprevious" ]; then
    echo "&lt;||"
  fi
fi
