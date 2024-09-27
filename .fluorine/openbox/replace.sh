#!/usr/bin/bash
cd ~/.fluorine/openbox
rm rc2.xml
cp ~/.config/openbox/rc.xml ~/.fluorine/openbox/rc.xml
sed "/<!-- openboxclose -->/ {r openbox-$1"$'\n'"} ; /<!-- openboxstart -->/,/<!-- openboxclose -->/ {d}" ~/.fluorine/openbox/rc.xml > ~/.config/openbox/rc.xml