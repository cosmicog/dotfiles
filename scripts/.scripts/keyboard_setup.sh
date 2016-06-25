#!/bin/sh

# Repeat rate
xset r rate 250 50

# Init special keys binding
xbindkeys&

# Set us-international-altgr keyboard
setxkbmap us -variant altgr-intl

# Configure keys
setxkbmap -option ctrl:swapcaps&
xmodmap ~/.xmodmap&
killall xcape
xcape -e 'Control_L=Escape'
xcape -e 'Super_L=Control_L|G|bracketleft'
xcape -e 'Super_R=Control_R|G|bracketright'