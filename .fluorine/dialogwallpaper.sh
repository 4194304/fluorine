#!/bin/bash
let i=0 # define counting variable
W=() # define working array
while read -r line; do # process file by file
    let i=$i+1
    W+=($i "$line")
done < <(find ~/Desktop -name "*.png"
echo "/home/$USER/.fluorine/background1.png"
echo "/home/$USER/.fluorine/background2.png"
echo "/home/$USER/.fluorine/background3.png"
echo "/home/$USER/.fluorine/background4.png"
echo "/home/$USER/.fluorine/background5.png"
find ~/Documents -name "*.png"
find ~/Pictures -name "*.png"
find ~/Music -name "*.png"
find ~/Videos -name "*.png"
find ~/ -type d \( -path ~/.cache -o -path ~/.fluorine -o -path ~/.config -o -path ~/.themes \) -prune -o -name '*.png' -print )
FILE=$(dialog --title "Choose a wallpaper" --menu "Please note that this is a listing of every PNG file in your home directory, and that the first 5 options are default Fluorine backgrounds. " 24 80 17 "${W[@]}" 3>&2 2>&1 1>&3) # show dialog and store output
RESULT=$?
clear
~/.fluorine/setwallpaper.sh "${W[$((FILE * 2 -1))]}"