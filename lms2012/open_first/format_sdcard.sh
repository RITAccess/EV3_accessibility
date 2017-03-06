#!/bin/bash

source ${PWD}/env_setup
curdir=${PWD}
sudo

clear
echo 
echo "*** FORMAT SDCARD ********************************** TCP120706 ***"
echo
echo BE SURE SDCARD IS REMOVED
echo -n and press enter or Ctrl-C to skip" ? "
read

clear
echo 
echo "*** FORMAT SDCARD ********************************** TCP120706 ***"
echo
sleep 2
before=$(ls /dev)
#ls mmcblk?
#ls sd?					# prevented possible wipe of entire Hard Drive lol
cd ${curdir}
echo CHECK LIST - INSERT SDCARD
echo -n and press enter or Ctrl-C to skip" ? "
read

clear
echo 
echo "*** FORMAT SDCARD ********************************** TCP120706 ***"
echo
sleep 2
after=$(ls /dev)
#ls mmcblk?
#ls sd?					# prevented possible wipe of entire Hard Dive lol
cd ${curdir}
echo -e "New Devices: \e[32m \e[5m"
diff -y --suppress-common-lines <(echo "$after") <(echo "$before")
echo -e "\e[22m \e[0m"
echo CHECK LIST CHANGES - Type the added partition name \(e.c. mmcblk0\) 
echo -n and press enter or Ctrl-C to skip" ? "
read drive

# The length of the string is non zero
if [ -n "$drive" ]; then
	if [ "$drive" != "sda" ]; then
		while true
		do
			clear
			echo 
			echo "*** FORMAT SDCARD ********************************** TCP120706 ***"
			echo
			echo
			echo "!!! ALL DATA ON DRIVE WILL BE LOST !!!"
			echo
			echo FORMAT "\""${drive}"\"" 
			echo -n press enter or Ctrl-C to skip" ? "
			read

			echo
			echo "  ...."formatting.sdcard

			sleep 5

			sudo umount /dev/${drive}p1 &> /dev/null
			sudo umount /dev/${drive}p2 &> /dev/null

			sudo fdisk /dev/${drive} < fdisk.cmd &>> sdcard.err

			sleep 2

			echo
			echo "  ...."making.kernel.partition
			sudo mkfs.msdos -n LMS2012 /dev/${drive}p1 &>> sdcard.err

			sleep 2

			echo
			echo "  ...."making.filesystem.partition
			sudo mkfs.ext3 -L LMS2012_EXT /dev/${drive}p2 &>> sdcard.err

			echo
			echo "  ...."checking.partitions
			sync

			if [ -e /dev/${drive}p1 ]; then
			    if [ -e /dev/${drive}p2 ]; then
			        echo
			        echo SUCCESS
    			else
			        echo
					echo "******************************************************************"
					cat sdcard.err
					echo "******************************************************************"
	        		echo
	        		echo SDCARD NOT FORMATTED PROPERLY !!!
			    fi

			else
		    	echo
				echo "******************************************************************"
	    		cat sdcard.err
				echo "******************************************************************"
	    		echo
		    	echo SDCARD NOT FORMATTED PROPERLY !!!
			fi
			echo
			echo REMOVE sdcard
			echo
			echo "******************************************************************"
			echo

			echo
			echo FORMAT ANOTHER ONE
			echo -n press enter or Ctrl-C to skip" ? "
			read

			echo
			echo
			echo INSERT SDCARD
			echo -n and press enter or Ctrl-C to skip" ? "
			read
			sleep 5
		done

	else
		echo
		echo YOU MUST NOT SPECIFY "sda" !!!
		echo
		echo "******************************************************************"
		echo
	fi

else
	echo
	echo YOU MUST SPECIFY A DRIVE !!!
	echo
	echo "******************************************************************"
	echo
fi





















