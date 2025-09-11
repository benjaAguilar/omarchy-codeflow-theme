#!/bin/bash

action=$1

if [ "$action" = "next" ]; then
    playerctl --player=spotify next
    notify-send "Played next song."
elif [ "$action" = "previous" ]; then
    playerctl --player=spotify previous
    notify-send "Played previous song."
else
    echo "Acción no válida. Usa 'next' o 'previous'."
fi
