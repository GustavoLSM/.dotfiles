#!/bin/bash

entries="⇠ Logout\n⭮ Reboot\n⏻ Shutdown"

selected=$(echo -e $entries|wofi --width 250 --height 240 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    pkill -u gustavo;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff;;
esac
