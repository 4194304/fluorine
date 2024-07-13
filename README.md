# Fluorine
Fluorine is a self made desktop environment that strives to be lightweight, configurable, and hiDPI friendly.

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
2. Run `git clone https://github.com/4194304/fluorine-desktop`
3. Change the directory into the fluorine-v2 folder that should be present with `cd fluorine-desktop`
4. Run the install script with `./install.sh`
5. Follow the steps in the installation procedure

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

## 4. Resource Usage
With my current setup on my late 2013 MacBook Pro, from the tty to the complete environment, it uses approximately 109MiB of RAM.

## To-do:
* Create a separate Openbox theme (that isn't tenebris) in the mean time due to licensing concerns
* Attempt to get mouse cursor to scale properly when starting the environment

## Status
Currently the project is in very early development, but sooner or later it will end up in a more polished state.
