#!/bin/sh
xrandr
xrandr \
    --output VGA-1 --off \
    --output LVDS-1 --off \
    --output HDMI-1 --mode 2560x1440 --rate 74.97 --pos 1920x0 --rotate normal \
    --output DP-1 --primary --mode 2560x1440 --rate 74.97 --pos 4480x0 --rotate normal
sleep 1
feh --bg-center ~/data/pictures/personal/wallpapers/truvada.png
exit
