#! /bin/bash

source "$(dirname "$0")/utility.sh"


if is_vga_plugedin
then
    if [[ "$1" == "dual" ]]
    then
        xrandr --output LVDS1 --mode 1366x768
        xrandr --output VGA1 --mode 1024x768 --above LVDS1
    else
        xrandr --output LVDS1 --mode 1024x768
        xrandr --output VGA1 --same-as LVDS1 --mode 1024x768
    fi
else
    xrandr --output LVDS1 --mode 1366x768
    xrandr --output VGA1 --off
    echo
    echo "[!] VGA not connected"
    echo "Use [dual] for dual display"
    echo
fi

sleep 0.5
ratpoison -c "restart"