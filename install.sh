echo " "
echo "Would you like to install the Fluorine desktop?"
echo "If so, respond by pressing "y" then hitting enter."
echo "If not, please respond with anything other than that."
read -p "Do you want to continue [y/n]: " prompt
if [[ $prompt == y* ]]; then
	cd ~
	clear
	sudo pacman -S rsync git lxappearance-obconf lxterminal xorg-xrdb tint2 openbox jgmenu xwallpaper xorg-xinit thunar cantarell-fonts 	obconf xorg-server gnu-free-fonts l3afpad
	git clone https://github.com/vinceliuice/Qogir-icon-theme
	mkdir -p ~/.local/share/icons; ./Qogir-icon-theme/install.sh -d ~/.local/share/icons -c all
	mkdir .themes
	git clone -b Material-Black-Colors-Desktop https://github.com/rtlewis1/GTK.git
	cp -R GTK/* ~/.themes/
	git clone https://github.com/4194304/fluorine-desktop
	rsync -av fluorine-desktop/ ~
	rm -rf fluorine-desktop Qogir-icon-theme GTK screenshot.png LICENSE README.md fluorine-settings
	chmod +x ~/.fluorine/*
 	cp ~/.local/share/icons/Qogir/scalable/apps/file-manager.svg ~/.local/share/icons/Qogir/scalable/apps/org.xfce.thunar.svg
  	cp ~/.local/share/icons/Qogir/scalable/apps/org.xfce.terminal.svg ~/.local/share/icons/Qogir/scalable/apps/lxterminal.svg
	echo " "
	echo "Installation complete!"
	echo "If you would like to start Fluorine (if in a TTY), run startx."
	exit
else
    echo "Stopping!"
    exit
fi
