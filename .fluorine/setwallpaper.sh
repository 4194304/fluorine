#!/bin/bash
rm ~/.fluorine/xwallpaper.sh
input=
while [[ $1 = "" ]]; do
	echo "sleep 0.1" > ~/.fluorine/xwallpaper.sh
	echo "xwallpaper --stretch ~/.fluorine/background2.png" >> ~/.fluorine/xwallpaper.sh
	chmod +x ~/.fluorine/xwallpaper.sh
	~/.fluorine/xwallpaper.sh
	exit
done
echo "sleep 0.1" > ~/.fluorine/xwallpaper.sh
echo "xwallpaper --stretch $1" >> ~/.fluorine/xwallpaper.sh
chmod +x ~/.fluorine/xwallpaper.sh
~/.fluorine/xwallpaper.sh