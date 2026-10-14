#!/usr/bin/env bash

if ! pgrep -x "polkit-gnome-au" > /dev/null; then
    /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
fi

if ! pgrep -x "nm-applet" > /dev/null; then
    nm-applet --indicator &
fi

WALLPAPER="/home/arch/Images/Wallpaper/girl_rain.jpeg"

sleep 1

if ! pgrep -x "hyprpaper" > /dev/null; then
    hyprpaper &
    sleep 0.5
fi

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"
hyprctl hyprpaper wallpaper "HDMI-A-1,$WALLPAPER"
