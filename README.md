# EVA - EV3 Accessibility Firmware
This project is intended to modify the existing vanilla developer firmware 
to provide accessibility options for users with visual impairments as well 
as sighted users.


## Development
As of now, the project is mainly developed on Linux Mint, via terminal based
editors ( I know primitive ). As per the Lego documentation, it is possible
to develop using Eclipse Helios and a virtual machine. In the long run,
Linux based development seems to be ideal. 

### Note to Developer(s)
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


