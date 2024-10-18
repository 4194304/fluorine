#!/bin/bash
echo " "
PS3="Select the action you would like to perform: "

select option in Shutdown Restart Logoff Exit
do
	case $option in
		"Shutdown")
			shutdown -P 0
			break;;
		"Restart")
			reboot
			break;;
		"Logoff")
			killall openbox
			break;;
		"Exit")
			echo " "
			break;;
	esac
done
