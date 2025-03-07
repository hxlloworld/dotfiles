#!/bin/env bash

wf-recorder_check() {
	if pgrep -x "wf-recorder" > /dev/null; then
			pkill -INT -x wf-recorder
			notify-send "Stopping all instances of wf-recorder" "$(cat /tmp/recording.txt)"
			wl-copy < "$(cat /tmp/recording.txt)"
			exit 0
	fi
}

wf-recorder_check

SELECTION=$(echo -e "screenshot selection\nrecord selection\nscreenshot display\nrecord display" | wofi --show dmenu -p "󰄀" )

IMG="${HOME}/Pictures/$(date +%Y-%m-%d_%H-%M-%S).png"
VID="${HOME}/Videos/$(date +%Y-%m-%d_%H-%M-%S).mp4"


case "$SELECTION" in
	"screenshot selection")
		grim -g "$(slurp)" "$IMG"
		wl-copy < "$IMG"
		notify-send "Screenshot Taken" "${IMG}"
		;;
	"screenshot display")
		grim -c -o eDP-1 "$IMG"
		wl-copy < "$IMG"
		notify-send "Screenshot Taken" "${IMG}"
		;;
	"record display")
		echo "$VID" > /tmp/recording.txt
		wf-recorder -a -o eDP-1 -f "$VID" &>/dev/null
		;;
	"record selection")
		echo "$VID" > /tmp/recording.txt
		wf-recorder -a -g "$(slurp)" -f "$VID" &>/dev/null
		;;
*)
	;;
esac
