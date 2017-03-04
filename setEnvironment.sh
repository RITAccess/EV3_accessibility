#!/bin/bash
opp=$HOME/projects/lms2012/open_first
echo
echo "=========================================================================================="
echo -e " Environment Setup"
echo "=========================================================================================="
echo
sleep 1

echo -e "Setting up pre-reqs\n"

echo -e "Increasing post buffer size"
git config http.postBuffer 52428800

echo -e "Linking bash to /bin/sh"
sudo rm /bin/sh
sudo ln -s /bin/bash /bin/sh

if [[ $# == 1 && $1 == "dash" ]]; then
	echo -e "Linking dash to /bin/sh"
	sudo rm /bin/sh
	sudo ln -s /bin/dash /bin/sh
fi

# Get uboot tools
echo "Installing MKIMAGE";
sudo apt-get install u-boot-tools;

# Get Doxygen documentation tools
echo "Installing Doxygen";
sudo apt-get install doxygen

echo "Installing ImageMagick"
sudo apt-get install imagemagick libmagickcore-dev
echo

echo "Installing Arm GCC Toolchain"
sudo apt-get install gcc-arm-linux-gnueabi

sleep 1

echo -e "\nPushing CodeSourcery to home"
if [ -d $HOME/CodeSourcery ]; then
	echo "CodeSourcery already already exists in your home directory."
else
	mkdir ~/CodeSourcery
	ln -s ~/projects/utilities/linuxdevkit/sg++_lite  ~/CodeSourcery/Sourcery_G++_Lite
	echo "CodeSourcery linked to your home directory."
fi
echo "Linking ARM toolchain to CodeSourcey binary directory"
ln -s /usr/bin/arm-linux-gnueabi-gcc ~/CodeSourcery/Sourcery_G++_Lite/bin/arm-none-linux-gnueabi-gcc
echo

sleep 1

echo -e "Pushing am1808 to home"
if [ -d $HOME/am1808 ]; then
	echo "am1808 already already exists in your home directory."
else
	ln -s ~/projects/utilities/am1808/ ~/am1808
	echo "Da Vinci SDK linked to your home directory."
fi
echo
sleep 1

echo -e "\nFinished pre-req setup\n"
echo "Switching directories"
cd $opp
echo -n "Verifying. . ."
if [ $opp == $PWD ]; then
	echo "In directory, sourcing the environment."
	source env_setup;
else
	echo "Unable to switch directories."
	echo "You may need to run again."
fi

echo -e "Programs installed, directories made, Done\n"
