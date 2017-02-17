# EVA - EV3 Accessibility Firmware
This project is intended to modify the existing vanilla developer firmware 
to provide accessibility options for users with visual impairments as well 
as sighted users.


## Development
As of now, the project is mainly developed on Linux Mint, via terminal based
editors ( I know primitive ). As per the Lego documentation, it is possible
to develop using Eclipse Helios and a virtual machine. In the long run,
Linux based development seems to be ideal. 

As far as I could tell the files that contribute to the firmware developement
are found in:

	/lms2012/lms2012/Linux_AM1808 

All functionality are derived from the .rbf files located within.


### Note to Developer(s)
##### File Structure
Lego developed the Developer Firmware with the assumption that the lms2012 
folder would be in the users home under the file project. In order to ensure
functionality, it is up to the developer to create a link in your home.

Visually:

	HOME
	  |			
	  +------ project = Linked to => EV3_accessibility

This way, during developement the scripts developed by lego will see

	HOME
	  |
	  +-------- project
				   |
				   +-------- lms2012
				   |
				   +-------- Assembler
				   |
				   +-------- README.md


##### CodeSourcery
In order to compile the source code available in the kernel, you will need to
extract the CodeSourcery.zip file into your home directory. The makefiles in 
the source sections are heavily reliant on CodeSourcery, so it is important to
ensure the files are extracted in the correct place.  

Visually:

	HOME
	  |
	  +------ CodeSourcery
					|
					+------- Sourcery_G++_Lite
									|
									+--------- arm-none-linux-gnueabi
									|
									+--------- bin
									|
									.
									.
									.
