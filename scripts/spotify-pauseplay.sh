#!/bin/bash

isPlaying=$(playerctl --player=spotify status)

if [ "$isPlaying" = "Playing" ]; then
  echo "||"
elif [ "$isPlaying" = "Paused" ]; then
  echo "|>"
else
  echo ""
fi

if [ $1 ]; then
  playerctl --player=spotify play-pause
fi
