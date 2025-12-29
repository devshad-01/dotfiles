#!/bin/bash
# Power menu using rofi

options="Logout\nSuspend\nReboot\nShutdown"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu")

case $choice in
    Logout)
        i3-msg exit
        ;;
    Suspend)
        systemctl suspend
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
    *)
        exit 0
        ;;
esac