# Fluorine
Fluorine is a self made desktop environment that strives to be lightweight, configurable, and hiDPI friendly.

## Setup
Setting up Fluorine can be done in two ways:

### 1. Installing it from the AUR
By far the easiest and most practical method, installing Fluorine from the AUR should be very straightforward and simple.

__Steps__:
1. Install it from AUR by running `yay -S fluorine`
2. Proceed like you would with any other AUR package

### 2. Cloning and installing
While also being easy, there are a few more steps.

__Steps__:
1. Open a terminal
2. Run `git clone https://github.com/4194304/fluorine-v2`
3. Change the directory into the fluorine-v2 folder that should be present with `cd fluorine-v2`
4. Run the install script with `./install.sh`
5. Follow the steps in the installation procedure

## Configuration
Fluorine can be configured graphically through the following apps:

### LXAppearance
LxAppearance, being the appearance section of the settings from LXDE, is very lightweight with a minimal amount of dependencies. In jgmenu it is listed in the Settings section as "Customize Look and Feel"

__LXAppearance on Fluorine supports the following in the different tabs:__
* Widgets, which is used to change the GTK theme
* Icon Themes, to change the current icon theme
* Mouse Cursors, where you can change the current cursor theme
* Window Border, which lets you change the following things on Openbox:
  * Theme (for hiDPI users read the disclaimer below, for changing theme, use the Theme tab)
  * Font size for different Openbox elements (Title Bar and Misc)
  * Window button order
  
__Disclaimer:__
For hiDPI users, most Openbox themes will have buttons that are way too small. For those who still want to change the Openbox theme, I recommend [this tool](https://xbm.jazzychad.net/) to help you get it done.

* Font, where you can configure font related things
* Other, where you can find some GUI related options

### Fluorine Control Panel
Currently in progress as of 6/28/2024, but will allow you to change some different attributes of Fluorine such as the wallpaper and DPI scale.

### tint2conf
Used to configure the taskbar.

