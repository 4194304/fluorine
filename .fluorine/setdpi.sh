#!/usr/bin/bash
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
if (($1 < 26));
	then
		exec ~/.fluorine/lowdpi/lowdpi.sh
fi
if (($1 > 26));
	then
		exec ~/.fluorine/lowdpi/normal/normal.sh
fi
