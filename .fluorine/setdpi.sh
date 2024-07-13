#!/usr/bin/bash
if ! [[ "$1" =~ ^[0-9]+$ ]]
    then
        echo "Number is not a valid integer, try again."
        exit
fi
if ! [[ "$2" =~ ^[0-9]+$ ]]
    then
        echo "Number is not a valid integer, try again."
        exit
fi

mkdir ~/.fluorine
rm -rf ~/.Xresources
declare -i A=($1*96/100)
echo Xft.dpi: $A >> ~/.Xresources
rm -rf ~/.fluorine/dpi.sh
declare -i B=($2*96/100)
echo "echo Xft.dpi: $B | xrdb -override" >> ~/.fluorine/dpi.sh
chmod +x ~/.fluorine/dpi.sh
