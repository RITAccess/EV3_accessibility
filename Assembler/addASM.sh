#!/bin/bash
# addASM.sh file updates path to allow developer to easily invoke the EV3 Bytecode assembler
# A: Alejandro Olvera
# E: alejandroolvera@my.unt.edu
# D: February 2017

homSRC=$HOME
pwdSRC=$PWD


# Test to see if user is in same directory as the executable
if [ -x "./addASM.sh" ]; then
	echo -e "Running addASM\n";
else
	echo -e "Please run this script in its current directory, or enable it as an executable\n";
	exit;
fi

# Test to see if .profile file already exist, if not create and add paths.
# If file exists, but does not contain the path for the assembler, add the path to
# existing file
if [ -e "$homSRC/.profile" ]; then
	echo -e "Found .profile, checking for this path:"
	if grep -F $pwdSRC $homSRC/.profile; then
		echo -e "\nFound correct path to EV3 Assembler, no need to add PATH";
	else
		echo -e "\nEV3 Assembler path not found, adding.";
		echo 'PATH=$PATH:'$PWD >> $homSRC/.profile;
	fi
else
	echo "Creating .profile file in home directory";
	echo 'PATH=$PATH:'$PWD >> $homSRC/.profile;
fi

echo -e "\nCompleted.";
