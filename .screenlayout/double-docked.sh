#!/bin/sh
xrandr \
    --output VGA-0 --off \
    --output LVDS-0 --off \
    --output DP-0 --off \
    --output HDMI-0 --mode 2560x1440 --rate 74.97 --pos 1920x0 --rotate normal \
    --output DP-1 --primary --mode 2560x1440 --rate 74.97 --pos 4480x0 --rotate normal
feh --bg-center ~/data/pictures/album-personal/wallpapers/dark.jpg 
