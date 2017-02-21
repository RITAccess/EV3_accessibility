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
folder would be in the users home under the file 'projects'. In order to ensure
functionality, it is up to the developer to create a link in your home.

Visually:

	HOME
	  |			
	  +------ projects = Linked to => EV3_accessibility

This way, during developement the scripts developed by lego will see

	HOME
	  |
	  +-------- projects
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
									

##### Setting Up Environment
A more in depth example then the PracticalStuff file in /lms2012/lms2012/doc/PracticalStuff 
can be found on the [Robotics@QUT](https://wiki.qut.edu.au/display/cyphy/EV3+Build+Environment+and+Compilation)
webpage.


#### Notes
After a bunch of digging around, it turns out the ev3sources from mindboards is the "official" lego firmware release by the The Lego Company, files have been updated to reflect
the change. Hopefully this means progress can be made.
#### LEGO MINDSTORMS EV3 source code
===============================

See [the release announcement on BotBench][1] for more information.

##### Things you will need

* A Linux (virtual) installation.  I used Ubuntu 13.04 on VMware Workstation, but I am sure other combinations also work.   
The reason for the Linux installation requirement is due to the case-sensitive filenames used by the Linux kernel source repository. Attempting to clone the source repository to a non-case sensitive file system such as Mac OSX HFS+ or Windows FAT would result in a corrupted repository.
* Eclipse.  I used Helios Service Release 1, but I know more recent versions will also work.
* Java JRE (for Eclipse)
* Code Sourcery Lite for ARM version 2009q1-203.  You can [download here directly][4].
* The mkimage program from u-boot-tools package to compile kernel.
* The convert program from imagemagick package.
* A USB to serial port dongle.  You need to splice an NXT cable and hook up dig0 (pin 5) and dig1 (pin 6) to TX and RX, not 100% which way around.  GND is pin 2 and 3, just pick one.  The brick’s console is on port 1 and has a baud rate of 115200 8N1.  I have a pre-made one with an NXT socket, it’s not actually as fancy as it sounds. A guide can be found [here][5].
* An SD card to put your custom firmware on. It doesn’t use up a lot of space, but I’d stick with a simple 2GB one
* A pair of flat-nosed pliers, for removing the SD card
* A Netgear WNA1100 WiFi dongle.  It is currently the only WiFi dongle that is supported by the EV3’s firmware.

##### Getting Started

Use Git to clone this repo:

    git clone https://github.com/mindboards/ev3sources.git

The scripts in the EV3 sources expect the source code to live in a projects folder in your home directory. You will need to create a  projects symlink to the ev3sources folder that was created when you cloned the Git repo.

To import this project in Eclipse, check out the [Wiki article][6]

##### Contributing

To make changes to the source code, click on the **Fork** button at the top of this page. This will create a copy of this repository under your own GitHub account. You can make changes to this repository as you wish. [See this page for more information about Forking.][2]

If you want to make a change to this shared repo, submit a **Pull Request**, which people can discuss and decide whether to apply your changes or not. [See this page for more information about Pull Requests.][3].

  [1]: http://botbench.com/blog/2013/07/31/lego-mindstorms-ev3-source-code-available/
  [2]: https://help.github.com/articles/fork-a-repo
  [3]: https://help.github.com/articles/using-pull-requests
  [4]: http://go.mentor.com/2ig4q
  [5]: http://botbench.com/blog/2013/08/15/ev3-creating-console-cable/
  [6]: https://github.com/mindboards/ev3sources/wiki/Eclipse-import


