#!/bin/bash
opp=$HOME/projects/lms2012/open_first

echo -e "Setting up pre-reqs\n"
# Get uboot tools
echo "Installing MKIMAGE";
sudo apt-get install u-boot-tools;

# Get Doxygen documentation tools
echo "Installing Doxygen";
sudo apt-get install doxygen

echo "Installing ImageMagick"
sudo apt-get install imagemagick libmagickcore-dev
echo

echo "Pushing CodeSourcery to home"
if [ -d $HOME/CodeSourcery ]; then
	echo "CodeSourcery already already exists in your home directory."
else
	mkdir ~/CodeSourcery
	ln -s ~/projects/utilities/linuxdevkit/sg++_lite  ~/CodeSourcery/Sourcery_G++_Lite
fi

echo "Pushing am1808 to home"
if [ -d $HOME/am1808 ]; then
	echo "am1808 already already exists in your home directory."
else
	ln -s ~/projects/utilities/am1808/ ~/am1808
fi

echo -e "\nFinished pre-req setup\n"
echo "Switching directories"
cd $opp
echo -n "Verifying. . ."
if [ $opp == $PWD ]; then
	echo "In directory, sourcing the environment."
	source env_setup;
else
	echo "Unable to switch directories."
fi

echo -e "\nAvailable options:"
make

echo -e "\tDone"
