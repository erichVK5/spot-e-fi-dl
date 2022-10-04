#!/bin/bash

sleep 2
for i in {1..52}
do
	scrot spot-raw-$i.png
	xdotool key Down
	xdotool key Down
	xdotool key Down
	xdotool key Down
	xdotool key Down
	xdotool key Down
	xdotool key Down
	sleep 1
done

