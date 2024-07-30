# <img src="https://i.imgur.com/AOVTzux.png" width="32px" height="32px"> Fluorine
Fluorine is a self made desktop environment that strives to be lightweight, configurable, and hiDPI friendly.
<img src="https://i.imgur.com/raTmZRH.png" width="288" height="188"> <img src="https://i.imgur.com/6xuLQnt.png" width="288" height="188">

## 1. Setup
Setting up Fluorine can be done in two ways:

### 1. Installing it from the AUR
By far the easiest and most practical method, installing Fluorine from the AUR should be very straightforward and simple.

__Steps__:
~~1. Install it from AUR by running `yay -S fluorine`~~
~~2. Proceed like you would with any other AUR package~~
AUR installation is coming soon

### 2. Cloning and installing
While also being easy, there are a few more steps.

__Steps__:
1. Open a terminal
2. Make sure you're in the home directory with `cd ~`
3. Get all of the dependencies with `sudo pacman -S git lxappearance lxterminal xorg-xrdb tint2 openbox jgmenu xwallpaper xorg-xinit thunar cantarell-fonts obconf`
4. Get the icon theme with `git clone https://github.com/vinceliuice/Qogir-icon-theme`, followed by `./Qogir-icon-theme/install.sh -d ~/.local/share/icons -c dark`
5. Create the .themes folder with `mkdir .themes`
6. To get the proper GTK theme run `git clone -b Material-Black-Colors-Desktop https://github.com/rtlewis1/GTK.git`, and move it into .themes with `cp -R GTK/* ~/.themes/` 
7. Run `git clone https://github.com/4194304/fluorine-desktop`
8. Copy the Fluorine files to your home directory with `cp -R fluorine-desktop/* ~`
9. Cleanup everything left by the setup with `rm -rf fluorine-desktop Qogir-icon-theme Material-Black-Colors screenshot.png LICENSE README.md`
10. If using no display manager, run Fluorine by using `startx`. If using a display manager, select Openbox.

Future installation steps:

~~4. Run the install script with `./install.sh`~~
~~5. Follow the steps in the installation procedure~~

## 2. Configuration
Fluorine can be configured graphically through the following apps:

### LXAppearance
LXAppearance, being the appearance section of the settings from LXDE, is very lightweight with a minimal amount of dependencies. In jgmenu it is listed in the Settings section as "Customize Look and Feel"

__LXAppearance on Fluorine supports the following in the different tabs:__
* Widgets, which is used to change the GTK theme
* Icon Themes, to change the current icon theme
* Mouse Cursors, where you can change the current cursor theme
* Window Border, which lets you change the following things on Openbox:
  * Theme (for hiDPI users read the disclaimer below, for changing theme, use the Theme tab)
  * Font size for different Openbox elements (Title Bar and Misc)
  * Window button order
  
__Disclaimer:__
For hiDPI users, most Openbox themes will have buttons that are way too small. For those who still want to change the Openbox theme, I recommend [OpenScale](https://github.com/4194304/fluorine-dpi-scripts), as you can simply feed in the percentage scale you want, and the directory of the theme, and it'll scale it all for you (not perfectly though!).

* Font, where you can configure font related things
* Other, where you can find some GUI related options

### Fluorine Control Panel
Currently in progress as of now, but will allow you to change some different attributes of Fluorine such as the wallpaper and DPI scale in one GTK application.

### tint2conf
Used to configure the taskbar.

### obconf
The has the same function as the Window Borders tab in LXAppearance, but in its own, more organized application.

## 3. Applications
Along with all of the configuration applications, there are a few applications which make up this desktop.

### xfce4-terminal
The default terminal due to the minimal amount of dependencies it has, and it has a solid GTK base.

### Thunar
Also part of XFCE, it's a rock solid GTK file manager which works great with DPI scaling.

### jgmenu
A simple, yet extremely customizable X11 menu.

### gedit
A lightweight, modern, yet convenient text editor.

### tint2
An extremely customizable panel that also scales based on screen height alone.

## Icon theme
The icon theme that best fit Fluorine for me was Qogir, it's quite simplistic, while still fitting in. 
*Small note: for the Thunar icon to look decent, root privileges are required (to copy file-manager.svg from the theme to /usr/share/icons) as tint2 is very stubborn about file locations.*

## 5. Resource Usage
With my current setup on my late 2013 MacBook Pro, from the tty to the complete environment, it uses approximately 109MiB of RAM.

## To-do:
* Create a separate Openbox theme (that isn't tenebris) in the mean time due to licensing concerns
* Attempt to get mouse cursor to scale properly when starting the environment

## Status
Currently the project is in very early development, but sooner or later it will end up in a more polished state.

## FAQ
Q: I thought that it would scale automatically!
 Simply go into the control panel and change the scale yourself, as I have no control over what the proper scale for you would be.
 *Note: a script might exist in the future to automatically scale it based on screen resolution on first startup in the future.

Q: Help! I made everything too big!
 Run the scripts from a TTY (look at documentation).

Q: How do I configure the taskbar/panel?
 Open the Tint2 configuration tool (Settings -> Tint2 Settings)
  To configure the icons in the taskbar, go to the launcher section.
  Further detail on how to configure the taskbar/panel is in the documentation.

Q: How to log off/shut down/restart?
 For instructions, hover over the ⏏️ button.
 From there, perform your desired action.
 For now, it will remain as it is until a GUI application is created.

Q: Multiple monitor support?
 Due to how GTK, Tint2, jgmenu, and Openbox function, independent monitor scales will likely never happen.

Q: Origin of name and creation?
 Fluorine (yes, named after the element) was a name I came up with out of the blue, as I am bad at coming up with names.
 As to why I created this, GNOME, my favorite desktop just wouldn't want to cooperate with fractional scaling patch. With KDE, it worked perfectly for a few days, and as expected (from past experiences), it broke after a few days. That simply wasn't acceptable to me, so I decided to fall back to what I had made previously, but with actual scaling instead of spoofing 1920x1200 with xrandr. With a bit of tweaking, it worked perfectly, and I decided to make it a project, thus leading to the creation of the Fluorine project.

Q: Is it safe?
 It is entirely run by shell scripts with a GUI frontend for them. The entire desktop is open source. 
 If you're *that* paranoid about things, I'd recommend finding a mental health professional.

More things will be here in the future, since (as mentioned above) the project is in its mere infancy.
