#!/usr/bin/bash
killall opensnap
opensnap & disown
sleep 0.5
xwallpaper --stretch ~/.fluorine/background2.png
