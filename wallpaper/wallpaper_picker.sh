#!/bin/bash

#!/bin/bash
IMGS="$HOME/.config/wallpaper"

killall awww-daemon 2>/dev/null || true
awww-daemon &
sleep 1 # give the daemon time to initialize

while true; do
  awww img "$(find "$IMGS" -name "*.png" | shuf -n 1)" --transition-duration 1
  sleep 150
done
