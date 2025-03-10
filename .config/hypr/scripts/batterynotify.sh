#!/bin/bash
while true; do
  bat_lvl=$(cat /sys/class/power_supply/BAT0/capacity)
  if [ "$bat_lvl" -le 30 ]; then
    notify-send --urgency=CRITICAL "Battery Low" "Level: ${bat_lvl}%"
    sleep 1200
  else
    sleep 120
  fi
done
