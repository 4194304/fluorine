#### WARNING: FLUORINE IS NOT CURRENTLY IN A FULLY FUNCTIONAL STATE. DO NOT EXPECT EVERYTHING TO WORK.

# <img src="https://i.imgur.com/AOVTzux.png" width="32px" height="32px"> Fluorine
Fluorine is a self made desktop environment that strives to be lightweight, configurable, and hiDPI friendly.
<img src="https://i.imgur.com/raTmZRH.png" width="288" height="188"> <img src="https://i.imgur.com/6xuLQnt.png" width="288" height="188">

## 1. Setup
Setting up Fluorine at the moment is done like this:

__Steps__:
1. Open a terminal
2. Run `bash -c "$(curl -fsSL https://fluorine.sh/install)"`

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
For hiDPI users, most Openbox themes will have buttons that are way too small. For those who still want to change the Openbox theme, I recommend [OpenScale](https://github.com/4194304/fluorine-dpi-scripts), as you can simply feed in the percentage scale you want, and the directory of the theme, and it'll scale it all for you (far from perfectly though!).

* Font, where you can configure font related things
* Other, where you can find some GUI related options

### Fluorine Control Panel
Currently in progress as of now, but will allow you to change some different attributes of Fluorine such as the wallpaper and DPI scale in one GTK application.

### tint2conf
Used to configure the taskbar.

### obconf
The has the same function as the Window Border tab in LXAppearance, but in its own, more organized application.

## 3. Applications
Along with all of the configuration applications, there are a few applications which make up this desktop.

### LXTerminal
The default terminal due to the minimal resource usage and small number of dependencies it has.

### Thunar
Also part of XFCE, it's a rock solid GTK file manager which works great with DPI scaling.

### jgmenu
A simple, yet extremely customizable X11 menu.

### Leafpad (L3afpad)
A GTK3 adaptation of a GTK2 text editor that gets the job done.

### tint2
A taskbar that scales well in hiDPI settings.

## Icon theme
The icon theme that best fit Fluorine for me was Qogir, as it's simplistic, easy for the eyes, and fits in.

Credit goes to Vinceliuice for making it. If you're interested in taking a look around in the repository, [here it is!](https://github.com/vinceliuice/Qogir-icon-theme)

## 5. Resource Usage
With my current setup on my late 2013 MacBook Pro (the main development station), from the TTY to the complete environment, it uses approximately 122MiB of RAM (as of 8/13/2024).

## Status
The project is in more of a beta than anything else as there are some issues, although not very major. Edit as of 9/14/2024: At the moment some things are being changed, so some major parts of Fluorine (such as the DPI scripts) are broken at the moment.

## To-do:
* Make an easy way to inject cursor scale into bashrc
* Make it so Thunar's sidebar scales with scale factor
* Create new scripts to scale Fluorine
* Wait until the Fluorine Settings applications actually works
