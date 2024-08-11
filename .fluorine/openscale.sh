if ! [[ "$1" =~ ^[0-9]+$ ]]
    then
        echo "Please enter an input that is an integer (ex. 200 = 200% scale) and try again."
        exit
fi
cd $2
shopt -s nullglob
for file in *.xbm
do
magick "$file" -interpolate Nearest -filter point -resize $1% "$file"
done
shopt -u nullglob
exit
