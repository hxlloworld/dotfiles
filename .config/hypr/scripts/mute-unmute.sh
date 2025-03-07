#!/bin/bash
if [[ $(pamixer --get-mute) == "true" ]]; then
    pamixer -u
    notify-send "Speakers unmuted"
else
    pamixer -m
    notify-send "Speakers muted"
fi
