if ! [[ "$1" =~ ^[0-9]+$ ]]
    then
        echo "Number is not a valid integer, try again."
        exit
fi
cd $2
cp -r openbox-3 openbox-3-original
echo "Backup done, initializing"
cd openbox-3
magick bullet.xbm -resize $1% bullet.xbm
magick close.xbm -resize $1% close.xbm
magick close_pressed.xbm -resize $1% close_pressed.xbm
magick close_disabled.xbm -resize $1% close_disabled.xbm
magick close_hover.xbm -resize $1% close_hover.xbm
magick desk.xbm -resize $1% desk.xbm
magick desk_pressed.xbm -resize $1% desk_pressed.xbm
magick desk_toggled.xbm -resize $1% desk_toggled.xbm
magick desk_disabled.xbm -resize $1% desk_disabled.xbm
magick desk_hover.xbm -resize $1% desk_hover.xbm
magick desk_toggled_pressed.xbm -resize $1% desk_toggled_pressed.xbm
magick desk_toggled_hover.xbm -resize $1% desk_toggled_hover.xbm
magick iconify.xbm -resize $1% iconify.xbm
magick iconify_pressed.xbm -resize $1% iconify_pressed.xbm
magick iconify_disabled.xbm -resize $1% iconify_disabled.xbm
magick iconify_hover.xbm -resize $1% iconify_hover.xbm
magick max.xbm -resize $1% max.xbm
magick max_pressed.xbm -resize $1% max_pressed.xbm
magick max_toggled.xbm -resize $1% max_toggled.xbm
magick max_disabled.xbm -resize $1% max_disabled.xbm
magick max_hover.xbm -resize $1% max_hover.xbm
magick max_toggled_pressed.xbm -resize $1% max_toggled_pressed.xbm
magick max_toggled_hover.xbm -resize $1% max_toggled_hover.xbm
magick shade.xbm -resize $1% shade.xbm
magick shade_pressed.xbm -resize $1% shade_pressed.xbm
magick shade_toggled.xbm -resize $1% shade_toggled.xbm
magick shade_disabled.xbm -resize $1% shade_disabled.xbm
magick shade_hover.xbm -resize $1% shade_hover.xbm
magick shade_toggled_pressed.xbm -resize $1% shade_toggled_pressed.xbm
magick shade_toggled_hover.xbm -resize $1% shade_toggled_hover.xbm
echo "Scaling complete"
exit
