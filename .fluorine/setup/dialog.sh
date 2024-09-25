#!/usr/bin/bash
clear
dialog --title "Fluorine Setup" \
	--clear \
	--msgbox \
"Before Fluorine is set up and ready, please \n
choose a suitable interface scale. \n
\n
This setting can be changed at any time from \n
either within Fluorine, or from a terminal." 10 50
exec 3>&1 
result=$(dialog --title "Fluorine Setup" \
	--menu \
"Please choose a proper scale factor: \n
\n
Example: a 1920x1080 screen would use 100% scale on a 24 inch monitor, but a 4K TV might also work with the same scale factor. \n
\n
IMPORTANT: Screen resolution examples shown in the right column would be relative to that of the 24 inch monitor described above." 50 50  20 \
"25%" "480x270" \
"50%" "960x540" \
"75%" "1440x810" \
"100%" "1920x1080" \
"125%" "2400x1350" \
"150%" "2880x1620" \
"175%" "3360x1890" \
"200%" "3840x2160" \
"225%" "4320x2340" \
"250%" "4800x2700" \
"275%" "5280x2970" \
"300%" "5760x3240" \
"325%" "6240x3510" \
"350%" "6720x3780" \
"375%" "7200x4050" \
"400%" "7680x4320" \
"425%" "8160x4590" \
"450%" "8640x4860" \
"475%" "9120x5130" \
"500%" "9600x5400" 2>&1 >/dev/tty)
exec 3>&-
clear
number=${result::-1}
exec ~/.fluorine/./setinterface.sh $number & dialog --title "Fluorine Setup" \
	--clear \
	--msgbox \
"Fluorine has been successfully set up. \n
\n
Press enter to continue." 10 50
killall xinit
startx
