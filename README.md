### README is currently under construction

## Note:
Fluorine is in a mostly functional beta, so please note that the desktop may have bugs, or be prone to breaking.

On top of that, currently Fluorine is only made to work on Arch based systems. If you want to install Fluorine on a distribution that is not Arch based, please <a target="blank" href="https://fluorine.sh/packagelist">find and install these packages for your system</a> before executing the install script.

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

<b>apt (Ubuntu)</b>
<br>
<br>
Before running Fluorine's install script, run this command to install necessary packages:
```bash
sudo apt install dialog git wmctrl gtk+3.0 rsync fonts-cantarell fonts-freefont-ttf polkitd xorg xinit tumbler xwallpaper lxterminal thunar jgmenu openbox tint2 l3afpad lxappearance-obconf
```
<p>Updating should be the same as on Alpine.</p>

<b>portage (Gentoo)</b>
<br>
<br>
<p>At the moment I have not taken the time to see what packages are available on Gentoo, but it should be simple enough to find the packages manually.</p>

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
Did not finish.
