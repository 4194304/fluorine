#!/bin/bash
cp ~/.fluorine/tint2/tint2rc-$1 ~/.config/tint2/tint2rc
cp ~/.fluorine/jgmenu/jgmenurc-$1 ~/.config/jgmenu/jgmenurc
~/.fluorine/./setdpi.sh $1 $1
~/.fluorine/openbox/./replace.sh $1
echo "Restarting interface elements..." & {
killall tint2
killall jgmenu
tint2 & disown
~/.fluorine/dpi.sh
openbox --reconfigure
killall opensnap
opensnap & disown
} &> /dev/null
echo " "
echo "If any GTK or Qt applications are open, please restart them for your new scale factor to take effect."
exit
