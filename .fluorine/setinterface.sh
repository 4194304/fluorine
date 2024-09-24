#!/usr/bin/bash
cp ~/.fluorine/tint2/tint2rc-$1 ~/.config/tint2/tint2rc
cp ~/.fluorine/jgmenu/jgmenurc-$1 ~/.config/jgmenu/jgmenurc
~/.fluorine/./setdpi.sh $1 $1
~/.fluorine/openbox/./replace.sh $1
exit