EVA - EV3 Accessiblity
===============================

## Things you will need

* A Linux installation (Virtual or Native).  I used Linux Mint 18.1 running natively on a dual boot machine.    
The reason for the Linux installation requirement is due to the case-sensitive filenames used by the Linux kernel source repository. Attempting to clone the source repository to a non-case sensitive file system such as Mac OSX HFS+ or Windows FAT would result in a corrupted repository.
* Code Sourcery Lite for ARM version 2009q1-203.  You can [download here directly][3].
* The mkimage program from u-boot-tools package to compile kernel.
* The convert program from imagemagick package.
* A USB to serial port dongle.  You need to splice an NXT cable and hook up dig0 (pin 5) and dig1 (pin 6) to TX and RX, not 100% which way around.  GND is pin 2 and 3, just pick one.  The brick’s console is on port 1 and has a baud rate of 115200 8N1.  I have a pre-made one with an NXT socket, it’s not actually as fancy as it sounds. A guide can be found [here][4].
* An SD card to put your custom firmware on. It doesn’t use up a lot of space, but I’d stick with a simple 2GB one
* A pair of flat-nosed pliers, for removing the SD card
* A Netgear WNA1100 WiFi dongle.  It is currently the only WiFi dongle that is supported by the EV3’s firmware.

## Getting Started

Use Git to clone this repo:

    git clone https://github.com/RITAccess/EV3_accessibility

The scripts in the EV3 sources expect the source code to live in a projects folder in your home directory. You will need to create a  projects symlink to the ev3sources folder that was created when you cloned the Git repo.

## Contributing

To make changes to the source code, click on the **Fork** button at the top of this page. This will create a copy of this repository under your own GitHub account. You can make changes to this repository as you wish. [See this page for more information about Forking.][1]

If you want to make a change to this shared repo, submit a **Pull Request**, which people can discuss and decide whether to apply your changes or not. [See this page for more information about Pull Requests.][2].

  [1]: https://help.github.com/articles/fork-a-repo
  [2]: https://help.github.com/articles/using-pull-requests
  [3]: https://sourcery.mentor.com/GNUToolchain/package4571/public/arm-none-linux-gnueabi/arm-2009q1-203-arm-none-linux-gnueabi-i686-pc-linux-gnu.tar.bz2
  [4]: http://botbench.com/blog/2013/08/15/ev3-creating-console-cable/
