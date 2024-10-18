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
cp ~/.fluorine/openbox/openbox-100 ~/.fluorine/temp/openbox-custom
cp ~/.config/openbox/rc.xml ~/.fluorine/temp/rc.xml
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
fi
if (($u > 26));
	then
		sed -i -e "s/lowDPI font 17/Cantarell 11/g" ~/.fluorine/temp/settings.ini
fi

cd ~/.fluorine/temp/
sed $'/<!-- openboxclose -->/ {r openbox-custom\n} ; /<!-- openboxstart -->/,/<!-- openboxclose -->/ {d}' ~/.fluorine/temp/rc.xml > ~/.config/openbox/rc.xml
cd ~
rm -rf ~/.fluorine/temp/
openbox --reconfigure