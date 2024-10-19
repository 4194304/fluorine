#!/bin/bash
if ! [[ "$1" =~ ^[0-9]+$ ]]
    then
        echo "Number is not a valid integer, try again."
        exit
fi

rm -rf ~/.Xresources
N=$(bc -l <<< '100/24')
C=$(bc -l <<< $1/$N)
D=$(printf "%.0f\n" "$C")
declare -i A=($1*96/100)
echo Xft.dpi: $A > ~/.Xresources
echo "Xcursor.size: $D" >> ~/.Xresources
rm -rf ~/.fluorine/dpi.sh


cd ~
mkdir -p ~/.fluorine/temp/
cp ~/.config/gtk-3.0/settings.ini ~/.fluorine/temp/settings.ini
cp ~/.config/lxterminal/lxterminal.conf ~/.fluorine/temp/lxterminal.conf
cp ~/.config/l3afpad/l3afpadrc ~/.fluorine/temp/l3afpadrc
cp ~/.fluorine/openbox/openbox-100 ~/.fluorine/temp/openbox-custom
cp ~/.config/openbox/rc.xml ~/.fluorine/temp/rc.xml
cp ~/.config/tint2/tint2rc ~/.fluorine/temp/tint2rc
cp ~/.fluorine/jgmenu/jgmenurc-custom ~/.fluorine/temp/jgmenurc
p=$1
q=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+12) / 25) * 25} 1' <<< $p)
r=$(bc -l <<< "$q/100")
s=$(printf "%.*f\n" 2 $r)
sed -i -e "s/1x/"$s"x/g" ~/.fluorine/temp/openbox-custom
t=$(bc <<< "$s*100")
u=$(printf "%.*f\n" 0 $t)
if (($u < 26));
	then
		sed -i -e "s/11/17/g" ~/.fluorine/temp/openbox-custom
		sed -i -e "s/13/17/g" ~/.fluorine/temp/openbox-custom
		sed -i -e "s/Cantarell/lowDPI font/g" ~/.fluorine/temp/openbox-custom
		sed -i -e "s/Cantarell 11/lowDPI font 17/g" ~/.fluorine/temp/settings.ini
		sed -i -e "s/Cantarell 11/lowDPI font 17/g" ~/.fluorine/temp/l3afpadrc
		sed -i -e "s/FreeMono 11/lowDPI font 17/g" ~/.fluorine/temp/lxterminal.conf
		sed -i -e "s/font = Cantarell 11/font = lowDPI font 5/g" ~/.fluorine/temp/jgmenurc
fi
if (($u > 26));
	then
		sed -i -e "s/lowDPI font 17/Cantarell 11/g" ~/.fluorine/temp/settings.ini
		sed -i -e "s/font = lowDPI font 5/font =Cantarell $D/g" ~/.fluorine/temp/jgmenurc
		sed -i -e "s/lowDPI font 17/FreeMono 11/g" ~/.fluorine/temp/lxterminal.conf
		sed -i -e "s/lowDPI font 17/Cantarell 11/g" ~/.fluorine/temp/lxterminal.conf
fi

cd ~/.fluorine/temp/
sed $'/<!-- openboxclose -->/ {r openbox-custom\n} ; /<!-- openboxstart -->/,/<!-- openboxclose -->/ {d}' ~/.fluorine/temp/rc.xml > ~/.config/openbox/rc.xml
cp ~/.fluorine/temp/settings.ini ~/.config/gtk-3.0/settings.ini
declare -i A=(100*$1/100)
declare -i B=(26*$1/100)
declare -i C=(9*$1/100)
declare -i D=(11*$1/100)
declare -i E=(13*$1/100)
declare -i F=(15*$1/100)
sed -i -e "s/menu_width = 100/menu_width = $A/g" ~/.fluorine/temp/jgmenurc
sed -i -e "s/item_height = 26/item_height = $B/g" ~/.fluorine/temp/jgmenurc
sed -i -e "s/sep_height = 9/sep_height = $C/g" ~/.fluorine/temp/jgmenurc
sed -i -e "s/icon_size = 13/icon_size = $E/g" ~/.fluorine/temp/jgmenurc
sed -i -e "s/arrow_width = 15/arrow_width = $F/g" ~/.fluorine/temp/jgmenurc
cp ~/.fluorine/temp/jgmenurc ~/.config/jgmenu/jgmenurc
cp ~/.fluorine/temp/lxterminal.conf ~/.config/lxterminal/lxterminal.conf
cp ~/.fluorine/temp/l3afpadrc ~/.config/l3afpad/l3afpadrc
# cp ~/.fluorine/temp/tint2rc ~/.config/tint2/tint2rc
rm -rf ~/.fluorine/temp/
openbox --reconfigure
