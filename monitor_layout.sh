#!/bin/bash

xset -dpms
xset s off

#xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 712x0 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off
xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-0 --off --output DP-1 --mode 1366x768 --pos 1920x0 --rotate left --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off

exec picom

sleep 1
exec feh --bg-scale /home/dks/Pictures/bg2.png

#while false; do
    #should propably watch journalctl instead of running xrandr every 5 seconds
 #   QUERY=$(xrandr --query)
  #  if [ $QUERY ?? 'HDMI-0 connected' && $QUERY ?? 'DP-1 connected' ]; then
   #     xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-0 --off --output DP-1 --mode 1366x768 --pos 1920x0 --rotate left --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off
   # else
   #     xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 712x0 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off
   # fi

   # sleep 5
#done
