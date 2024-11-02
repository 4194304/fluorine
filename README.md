### README is currently under construction

## Note:
Fluorine should be mostly stable, but be prepared to use the terminal and deal with problems.

On top of that, currently Fluorine is only made to work on Arch based systems. If you want to install Fluorine on a distribution that is not Arch based, please scroll down to the <b>Installing and updating on distributions other than Arch</b> section before executing the install script.

# Fluorine
Fluorine is a Linux desktop that focuses on being lightweight, customizable, and most importantly, great for hiDPI displays.

### How to install Fluorine
Fluorine can be installed by running the following command below:
```bash
bash <(curl -s https://fluorine.sh/install)
```
Proceed with the prompts, and when you're done you should be greeted with Fluorine's desktop!

### Updating Fluorine
WARNING: At the moment this may lead to Fluorine breaking, but the chance is unlikely.

If your installation is out of date, or is broken, updating Fluorine may be the solution.
```bash
bash <(curl -s https://fluorine.sh/update)
```

### Installing and updating on distributions other than Arch
While Arch Linux is the mainly supported distribution for Fluorine, other distributions also work as well.

<b>apk (Alpine)</b>
<br>
<br>
Alpine has its own install script:
```bash
bash <(curl -s https://fluorine.sh/alpine)
```

Follow what is presented to you in the terminal, and DO NOT restart after Fluorine has finished installing. Log out, and log back in.

Updating Fluorine on Alpine should work as intended.

<b>apt (Ubuntu/Debian)</b>
<br>
<br>
Before running Fluorine's install script, run this command to install necessary packages:
```bash
sudo apt install dialog git wmctrl gtk+3.0 rsync fonts-cantarell fonts-freefont-ttf polkitd xorg xinit tumbler xwallpaper lxterminal thunar jgmenu openbox tint2 l3afpad lxappearance-obconf imagemagick
```
<p>Updating should work perfectly fine, however you will have to install any missing new packages.</p>

<b>portage (Gentoo)</b>
<br>
<br>
<p>At the moment I have not found the packages, but I would highly recommend installing apk and doing things the "Alpine way" as Gentoo virtually runs off of the same core system as Alpine.</p>
<br>
<b>Installing apk</b>
<p>First download it using wget:"
<p>wget https://gitlab.alpinelinux.org/api/v4/projects/5/packages/generic/v2.14.0/x86_64/apk.static</p>
<br>
<p>This acts as a binary, so you can simply copy it to /usr/bin without the .static extension and it will work.</p>

<b>pacman (Manjaro)</b>
<br>
<br>
Current status of Manjaro compatibility is unknown, but Manjaro should work without issue.

<b>yum (RHEL)</b>
<br>
<br>
Will be added soon.

<b>dnf (Fedora)</b>
<br>
<br>
Before running the install script, run this command install necessary packages:
```bash
bc imagemagick rsync git wmctrl dialog lxappearance-obconf lxterminal xrdb tint2 jgmenu openbox tumbler Thunar xorg-x11-xinit obconf abattis-cantarell-fonts xorg-x11-server-Xorg polkit l3afpad gnu-free-fonts
```
On top of that though, you will have compile and install xwallpaper (each line is an individual command):

```bash
git clone https://github.com/stoeckmann/xwallpaper
cd xwallpaper
./autogen.sh
./configure
make
make install
```
Otherwise you will not be able to have a wallpaper (black background).
