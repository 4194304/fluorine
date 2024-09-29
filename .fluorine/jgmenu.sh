#!/bin/bash
if ! [[ "$1" =~ ^[0-9]+$ ]]
    then
        echo "Number is not a valid integer, try again."
        exit
fi
cd ~/.fluorine/jgmenu
cp jgmenurc-$1 ~/.config/jgmenu/jgmenurc
