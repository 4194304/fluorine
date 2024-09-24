#!/usr/bin/bash
cd ~/.fluorine/openbox
cp ~/.config/openbox/rc.xml ~/.fluorine/openbox/rc.xml
sed "/ this stuff/ {r openbox-$1"$'\n'"} ; /theme/,/ this stuff/ {d}" rc.xml > ~/.config/openbox/rc.xml