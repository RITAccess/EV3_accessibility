#!/bin/bash

echo
echo -------------------------------------------------------------------------------
echo BUILDING Developer Image
echo -------------------------------------------------------------------------------
echo
sleep 1

if [ $EUID = 0 ]; then
	sleep 1
else
	echo "This script must be run as root"
	exit
fi

echo -n "Permissions must be updated to 755 on your mnt folder, continue?(y/n) "
read res1

#Change /mnt folder permissions to allow for standard user writing
if [ $res1 = 'y' ]||[ $res1 = 'Y' ]; then
	echo -n "Changing permissions..."
	chmod 755 /mnt
	echo
else
	exit 1
fi

#echo "Creating Filesystem..."
./scripts/make_ev3_os.sh

#echo "Creating Image..."
./scripts/make_image.pl
