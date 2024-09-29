#!/bin/bash
killall opensnap
opensnap & disown
sleep 0.01
xwallpaper --stretch ~/.fluorine/background2.png
