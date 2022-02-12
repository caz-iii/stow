#!/bin/sh
xrandr
xrandr \
    --output VGA-0 --mode 1920x1080 --rate 60.00 --pos 7040x0 --rotate normal \
    --output LVDS-0 --mode 1920x1080 --pos 0x0 --rotate normal \
    --output DP-0 --off \
    --output HDMI-0 --mode 2560x1440 --rate 74.97 --pos 1920x0 --rotate normal \
    --output DP-1 --primary --mode 2560x1440 --rate 74.97 --pos 4480x0 --rotate normal
sleep 1
feh --bg-center ~/data/pictures/personal/wallpapers/truvada.png
exit
