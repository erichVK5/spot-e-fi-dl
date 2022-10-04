#!/bin/bash

# the for loop goes to 52, assuming 7 songs per screen, and about 350 songs in the playlist
# the loop range will need to be modified depending on the playlist length, and the height of the screen

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

