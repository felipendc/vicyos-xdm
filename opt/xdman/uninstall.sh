#!/bin/bash
if [ $(id -u) != "0" ]
then
	echo "Please run this script as root"
	echo "For installation instructions, please refer to readme.txt"
	exit 1
fi

rm -rf /opt/xdman
rm -f /usr/share/applications/xdman.desktop
rm -f /usr/bin/xdman
xdg-desktop-menu forceupdate
echo "XDM is successfully removed from your computer"
