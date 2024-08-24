#### WARNING: FLUORINE IS NOT CURRENTLY IN A FULLY FUNCTIONAL STATE. DO NOT EXPECT EVERYTHING TO WORK.

# <img src="https://i.imgur.com/AOVTzux.png" width="32px" height="32px"> Fluorine
Fluorine is a self made desktop environment that strives to be lightweight, configurable, and hiDPI friendly.
<img src="https://i.imgur.com/raTmZRH.png" width="288" height="188"> <img src="https://i.imgur.com/6xuLQnt.png" width="288" height="188">

## 1. Setup
Setting up Fluorine at the moment is done like this:

__Steps__:
1. Open a terminal
2. Run `/usr/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/4194304/fluorine/main/install.sh)"`

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
The has the same function as the Window Borders tab in LXAppearance, but in its own, more organized application.

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
An extremely customizable panel that scales based on screen height (everything else doesn't scale automatically, don't let it decieve you!

## Icon theme
The icon theme that best fit Fluorine for me was Qogir, as it's simplistic, easy for the eyes, and fits in.

Credit goes to Vinceliuice for making it. If you're interested in taking a look around in the repository, [here it is!](https://github.com/vinceliuice/Qogir-icon-theme)

## 5. Resource Usage
With my current setup on my late 2013 MacBook Pro (the main development station), from the TTY to the complete environment, it uses approximately 122MiB of RAM (as of 8/13/2024).

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
 Due to how GTK, Tint2, jgmenu, and Openbox function, independent monitor scales will likely never happen. However, I have an idea of scaling connected monitors artificially, but it hasn't been implemented yet. For instance, if you were to have a momitor at 3840x2160@300% and a 1080p monitor, it would double your other monitor's screen resolution to accommodate for the scale.

Q: Origin of name and creation?
 Fluorine (yes, named after the element) was a name I came up with out of the blue, as I am bad at coming up with names.
 As to why I created this, GNOME, my favorite desktop just wouldn't want to cooperate with fractional scaling patch. With KDE, it worked perfectly for a few days, and as expected (from past experiences), it broke after a few days. That simply wasn't acceptable to me, so I decided to fall back to what I had made previously, but with actual scaling instead of spoofing 1920x1200 with xrandr. With a bit of tweaking, it worked perfectly, and I decided to make it a project, thus leading to the creation of the Fluorine project.

Q: Is it safe?
 It is entirely run by shell scripts with a GUI frontend for them. The entire desktop is open source. 
 If you're still concerned, everything here is for you to view, so you can make the decision if you want to use it or not yourself.

Q: Tasks in the taskbar look off. How can it be fixed?
 Open the Tint2 Panel Configurator (Start -> Settings -> Tint2 Panel Configurator), and find the _Task Buttons_ section.
 From there, find the _maximum width_ option and configure it to your liking.

Q: How to install it?
 Scroll up to the top (it's right there!)
 For people who like to use the AUR, simply install it from there, run flstart, and let it do its work. The next time you run flstart after installation, it'll start Fluorine.

## To-do:
* Make an easy way to inject cursor scale into bashrc
* Make it so Thunar's sidebar scales with scale factor
* Wait until the Fluorine Settings applications actually works
