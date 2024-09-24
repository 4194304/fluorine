#!/usr/bin/bash
: ${DIALOG_CANCEL=1}
tmp_file=$(tempfile 2>/dev/null) || tmp_file=/tmp/test$$
trap "rm -f $tmp_file" 0 1 2 5 15
dialog --title "Fluorine Setup" --clear --yesno \
	"Welcome to Fluorine Setup. \n
	\n
	If you would like to install the \n
	Fluorine desktop, select yes. \n
	If you would like to abort, select no." 10 50 2> $tmp_file
return_value=$?
case $return_value in
  $DIALOG_CANCEL)
	dialog --title "Fluorine Setup" --clear --msgbox \
	"Setup was aborted." 10 50
	clear
	exit
esac
dialog --title "Fluorine Setup" --clear --msgbox \
	"To continue setting up Fluorine, please \n
enter your password if prompted." 10 50
clear
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 3
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 7
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 10
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 14
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 17
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 21
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 25
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 28
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 32
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 35
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 39
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 42
dialog --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 46
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 50
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 53
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 57
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 61
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 64
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 67
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 71
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 75
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 78
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 82
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 86
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 90
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 94
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 97
dialog --clear --title "Fluorine Setup" --gauge \
	"Please wait while the setup process completes. \n
\n
While setup is running, please do not power off your computer or cancel setup." 10 50 100
clear
exec ~/.fluorine/setup/dialog.sh