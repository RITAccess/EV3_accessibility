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
