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
mkdir -p ~/.fluorine/temp/
cp ~/.config/gtk-3.0/settings.ini ~/.fluorine/temp/settings.ini
cp ~/.config/lxterminal/lxterminal.conf ~/.fluorine/temp/lxterminal.conf
cp ~/.config/l3afpad/l3afpadrc ~/.fluorine/temp/l3afpadrc
cp ~/.fluorine/interface/openbox ~/.fluorine/temp/openbox-custom
cp ~/.config/openbox/rc.xml ~/.fluorine/temp/rc.xml
cp ~/.config/tint2/tint2rc ~/.fluorine/temp/tint2rc
cp ~/.fluorine/interface/jgmenu ~/.fluorine/temp/jgmenurc
declare -i B=(3*$1/100)
sed -i -e "s/border_width = 3/border_width = $B/g" ~/.fluorine/temp/tint2rc
p=$1
q=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+12) / 25) * 25} 1' <<< $p)
r=$(bc -l <<< "$q/100")
s=$(printf "%.*f\n" 2 $r)
t=$(bc <<< "$s*100")
u=$(printf "%.*f\n" 0 $t)
declare -i A=(11*$1/100)
sed -i -e "s/font = Cantarell 11/font = Cantarell $A/g" ~/.fluorine/temp/jgmenurc
sed -i -e "s/font = Cantarell 11/font = Cantarell $A/g" ~/.fluorine/temp/tint2rc
if (($u < 26));
	then
		sed -i -e "s/<size>11<\/size>/<size>17<\/size>/g" ~/.config/openbox/rc.xml
		sed -i -e "s/<size>13<\/size>/<size>17<\/size><!-- tag -->/g" ~/.config/openbox/rc.xml
		sed -i -e "s/<name>Cantarell<\/name>/<name>lowDPI font<\/name>/g" ~/.config/openbox/rc.xml
		sed -i -e "s/Cantarell 11/lowDPI font 17/g" ~/.fluorine/temp/settings.ini
		sed -i -e "s/Cantarell 11/lowDPI font 17/g" ~/.fluorine/temp/l3afpadrc
		sed -i -e "s/FreeMono 11/lowDPI font 17/g" ~/.fluorine/temp/lxterminal.conf
		sed -i -e "s/font = Cantarell 11/font = lowDPI font 5/g" ~/.fluorine/temp/jgmenurc
		sed -i -e "s/font = Cantarell 11/font = lowDPI font 5/g" ~/.fluorine/temp/jgmenurc
fi
if (($u > 26));
	then
		sed -i -e "s/<size>17<\/size><!-- tag -->/<size>13<\/size>/g" ~/.config/openbox/rc.xml
		sed -i -e "s/<size>17<\/size>/<size>11<\/size>/g" ~/.config/openbox/rc.xml
		sed -i -e "s/<name>lowDPI font<\/name>/<name>Cantarell<\/name>/g" ~/.config/openbox/rc.xml
		sed -i -e "s/lowDPI font 17/Cantarell 11/g" ~/.fluorine/temp/settings.ini
		sed -i -e "s/lowDPI font 17/Cantarell 11/g" ~/.fluorine/temp/l3afpadrc
		sed -i -e "s/lowDPI font 17/FreeMono 11/g" ~/.fluorine/temp/lxterminal.conf
fi
cp ~/.fluorine/temp/settings.ini ~/.config/gtk-3.0/settings.ini
declare -i Z=(100*$1/100)
declare -i Y=(26*$1/100)
declare -i X=(9*$1/100)
declare -i E=(13*$1/100)
declare -i F=(15*$1/100)
sed -i -e "s/menu_width = 100/menu_width = $Z/g" ~/.fluorine/temp/jgmenurc
sed -i -e "s/item_height = 26/item_height = $Y/g" ~/.fluorine/temp/jgmenurc
sed -i -e "s/sep_height = 9/sep_height = $X/g" ~/.fluorine/temp/jgmenurc
sed -i -e "s/icon_size = 13/icon_size = $E/g" ~/.fluorine/temp/jgmenurc
sed -i -e "s/arrow_width = 15/arrow_width = $F/g" ~/.fluorine/temp/jgmenurc
if (($1 < 26));
	then
		sed -i -e "s/font = Cantarell $A/font = lowDPI font 5/g" ~/.fluorine/temp/jgmenurc
fi

cp ~/.fluorine/temp/jgmenurc ~/.config/jgmenu/jgmenurc
cp ~/.fluorine/temp/lxterminal.conf ~/.config/lxterminal/lxterminal.conf
cp ~/.fluorine/temp/l3afpadrc ~/.config/l3afpad/l3afpadrc
cp ~/.fluorine/interface/tint2 ~/.fluorine/temp/tint2rc
declare -i G=(3*$1/100)
declare -i H=(4*$1/100)
declare -i I=($1/100)
declare -i J=(32*$1/100)
declare -i K=(2*$1/100)
declare -i L=(6*$1/100)
declare -i M=(8*$1/100)
declare -i N=(10*$1/100)
declare -i O=(12*$1/100)
declare -i P=(9*$1/100)
declare -i Q=(14*$1/100)
declare -i R=(22*$1/100)
declare -i S=(51*$1/100)
declare -i T=(130*$1/100)
declare -i U=(180*$1/100)
declare -i V=(88*$1/100)
declare -i W=(33*$1/100)
declare -i X=(3*$1/100)
sed -i -e "s/rounded = 3/rounded = $G/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/rounded = 4/rounded = $H/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/border_width = 1/border_width = $I/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/panel_padding = 1 0 1/panel_padding = $I 0 $I/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/panel_size = 100% 32/panel_size = 100% $J/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/autohide_height = 2/autohide_height = $K/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/taskbar_padding = 0 0 2/taskbar_padding = 0 0 $K/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/task_padding = 2 2 10/task_padding = $K $K $N/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/taskbar_name_padding = 6 6/taskbar_name_padding = $L $L/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/taskbar_name_font = Cantarell Bold 14/taskbar_name_font = Cantarell Bold $Q/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/task_maximum_size = 180 88/task_maximum_size = $U $V/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/task_font = Cantarell 9/task_font = Cantarell $P/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/task_thumbnail_size = 130/task_thumbnail_size = $T/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/systray_padding = 0 3 3/systray_padding = 0 $G $G/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/systray_icon_size = 33/systray_icon_size = $W/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/launcher_padding = 3 3 6/launcher_padding = $G $G $L/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/launcher_icon_size = 51/launcher_icon_size = $S/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/time1_font = Cantarell Bold 9/time1_font = Cantarell Bold $P/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/time2_font = Cantarell 10/time2_font = Cantarell $N/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/clock_padding = 9 0/clock_padding = $P 0/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/bat1_font = Cantarell 22/bat1_font = Cantarell $R/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/bat2_font = Cantarell 22/bat2_font = Cantarell $R/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/battery_padding = 8 8/battery_padding = $M $M/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/button_max_icon_size = 12/button_max_icon_size = $O/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/tooltip_padding = 8 8/tooltip_padding = $M $M/g" ~/.fluorine/temp/tint2rc
sed -i -e "s/tooltip_font = Cantarell 10/tooltip_font = Cantarell $N/g" ~/.fluorine/temp/tint2rc
if (($1 < 51));
	then
		sed -i -e "s/button_icon = ~\/.fluorine\/menu.png/button_icon = ~\/.fluorine\/menu_50.png/g" ~/.fluorine/temp/tint2rc
fi
if (($1 < 26));
	then
		sed -i -e "s/button_max_icon_size = $O/button_max_icon_size = $J/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/rounded = $G/rounded = 1/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/rounded = $H/rounded = 1/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/taskbar_name_font = Cantarell Bold $Q/taskbar_name_font = lowDPI font 5/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/task_font = Cantarell $P/task_font = lowDPI font 5/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/time1_font = Cantarell Bold $P/time1_font = lowDPI font 5/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/time2_font = Cantarell $N/time2_font = lowDPI font 0/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/bat1_font = Cantarell $R/bat1_font = lowDPI font 5/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/bat2_font = Cantarell $R/bat2_font = lowDPI font 0/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/tooltip_font = Cantarell $N/tooltip_font = lowDPI font 5/g" ~/.fluorine/temp/tint2rc
		sed -i -e "s/button_icon = ~\/.fluorine\/menu_50.png/button_icon = ~\/.fluorine\/menu_25.png/g" ~/.fluorine/temp/tint2rc
fi
mkdir -p ~/.themes
rm -rf ~/.themes/openbox/
cp -R ~/.fluorine/interface/base ~/.themes/openbox
declare -i L=($1/5)
for file in ~/.themes/openbox/openbox-3/*.xbm
do
magick "$file" -interpolate Nearest -filter point -resize $L% "$file"
done
declare -i A=(20*$L/100)
declare -i B=(5*$L/100)
declare -i C=(15*$L/100)
declare -i D=(10*$L/100)
if (($1 < 70))
	then
		cp ~/.fluorine/interface/icons/50/*.xbm ~/.themes/openbox/openbox-3/
fi
if (($1 < 50))
	then
		declare -i A=(1)
		declare -i B=(1)
		declare -i C=(1)
		declare -i D=(0)
		cp ~/.fluorine/interface/icons/25/*.xbm ~/.themes/openbox/openbox-3/
fi
sed -i -e "s/window.handle.width: 20/window.handle.width: $A/g" ~/.themes/openbox/openbox-3/themerc
sed -i -e "s/border.Width: 5/border.Width: $B/g" ~/.themes/openbox/openbox-3/themerc
sed -i -e "s/padding.width: 15/padding.width: $C/g" ~/.themes/openbox/openbox-3/themerc
sed -i -e "s/menu.overlap: 10/menu.overlap: $D/g" ~/.themes/openbox/openbox-3/themerc
cp ~/.fluorine/temp/tint2rc ~/.config/tint2/tint2rc
cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml ~/.fluorine/temp/thunar.xml
killall thunar
killall xfconfd
declare -i A=(130*$1/100)
declare -i D=(16*$1/100)
if (($1 > 1));
	then
		B=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+12) / 25) * 25} 1' <<< $1)
fi
if (($1 > 100));
	then
		B=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+25) / 50) * 50} 1' <<< $B)
fi
if (($1 > 300));
	then
		B=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+50) / 100) * 100} 1' <<< $B)
fi
if (($1 > 400));
	then
		B=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+200) / 400) * 400} 1' <<< $B)
fi
if (($1 > 800));
	then
		B=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+400) / 800) * 800} 1' <<< $B)
fi
if (($B == 0));
	then
		B=$(echo 25)
fi
if (($B > 1600));
	then
		B=$(echo 1600)
fi

if (($1 > 1));
	then
		E=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+4) / 8) * 8} 1' <<< $D)
fi
if (($E < 16));
	then
		E=$(echo 16)
fi
if (($1 > 200));
	then
		E=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+8) / 16) * 16} 1' <<< $E)
fi
if (($1 > 300 && $1 < 800));
	then
		E=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+24) / 48) * 48} 1' <<< $E)
fi
if (($1 > 800));
	then
		E=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+16) / 32) * 32} 1' <<< $E)
fi
if (($1 > 1200));
	then
		E=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+32) / 64) * 64} 1' <<< $E)
fi
if (($1 > 1600));
	then
		E=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+128) / 256) * 256} 1' <<< $E)
fi
if (($1 > 3200));
	then
		E=$(awk '{for (i=1; i<=NF; i++) $i = int( ($i+256) / 512) * 512} 1' <<< $E)
fi
if (($E > 1024));
	then
		E=$(echo 1024)
fi
sed -i "s/THUNAR_ICON_SIZE_.*\"\/>/THUNAR_ICON_SIZE_$E\"\/>/g" ~/.fluorine/temp/thunar.xml
sed -i "s/<property name=\"last-separator-position\" type=\"int\" value=\".*\"\/>/<property name=\"last-separator-position\" type=\"int\" value=\"$A\"\/>/g" ~/.fluorine/temp/thunar.xml
sed -i "s/  <property name=\"last-details-view-zoom-level\" type=\"string\" value=\".*\"\/>/  <property name=\"last-details-view-zoom-level\" type=\"string\" value=\"THUNAR_ZOOM_LEVEL_$B\_PERCENT\"\/>/g" ~/.fluorine/temp/thunar.xml
sed -i "s/  <property name=\"last-icon-view-zoom-level\" type=\"string\" value=\".*\"\/>/  <property name=\"last-icon-view-zoom-level\" type=\"string\" value=\"THUNAR_ZOOM_LEVEL_$B\_PERCENT\"\/>/g" ~/.fluorine/temp/thunar.xml
cp ~/.fluorine/temp/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml
rm -rf ~/.fluorine/temp/
killall jgmenu
killall tint2
tint2 & disown
xrdb -retain ~/.Xresources
openbox --reconfigure
