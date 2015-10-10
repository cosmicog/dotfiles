#! /bin/sh

# Auto setup configuration script
# [!] Execute this AFTER ratpoison

# 2 different setups are available:
#
# * Home
#       - Laptop display [1366x768]
#       - LCD (VGA) monitor [1024x768]
#       - Laptop above LCD monitor
#       - Sound unmute
#       - Ethernet static configuration
#       - Init:
#           - Web explorer
#
# * No-Home
#       - Laptop display [1366x768]
#       - LCD (VGA) monitor [1024x768] (if any)
#       - Laptop below LCD monitor (if any)
#       - Sound mute
#       - Ethernet dhcp client



function am_i_at_home
{
    # At home i have my Ducky Shine 3 keyboard connected
    # so use that in order to identify if i'm at home
    usb_keyboard_entry=$(lsusb | grep -i "holtek semiconductor" | \
        awk '{print $7}')

    if [[ $usb_keyboard_entry == "Holtek" ]]
    then
        return 0
    else
        return 1
    fi
}


function is_vga_plugedin
{
    VGASTATE=$(xrandr | grep -i 'vga' | awk '{print $2 }')

    if [[ $VGASTATE == "connected" ]]; then
        return 0
    else
        return 1
    fi
}

if am_i_at_home
then
    xrandr --output VGA1 --mode 1024x768
    xrandr --output LVDS1 --mode 1024x768 --above VGA1
    amixer set Master unmute
    ~/.scripts/ether.sh
    firefox&
else
    if is_vga_plugedin
    then
        xrandr --output LVDS1 --mode 1366x768
        xrandr --output VGA1 --mode 1366x768 --above LVDS1
    fi
    amixer set Master mute
    dhclient enp3s0
fi