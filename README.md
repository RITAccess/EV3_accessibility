EVA - EV3 Accessiblity
===============================
This project focuses on increasing accessibility in the LEGO Mindstorms EV3 for visually impaired users.

## Sources
### EV3 1.04H
The intial proof of concept was created using the original firmware provide by LEGO in 2012.
To find out a little bit more about the Lego source host see [the Mindboards Repo][6].
To see the original [release announcement on BotBench][5] for more information.

### EV3 1.09D
With a successful proof of concept, it is essential to provide UI modifications to the newest version of the EV3 firmware. 
The source of the firmware is provided directly from LEGOs Firmware Developer Kit and will be modified in the same manner as version 1.04H.

## Things you will need

* A Linux installation (Virtual or Native).  I used Linux Mint 18.1 running natively on a dual boot machine.    
The reason for the Linux installation requirement is due to the case-sensitive filenames used by the Linux kernel source repository. Attempting to clone the source repository to a non-case sensitive file system such as Mac OSX HFS+ or Windows FAT would result in a corrupted repository.
* The mkimage program from u-boot-tools package to compile kernel.
* The convert program from imagemagick package.
* A USB to serial port dongle.  The brick’s console is on port 1 and has a baud rate of 115200, 8N1. [here][4].
* An SD card to put your custom firmware on.
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
  [5]: http://botbench.com/blog/2013/07/31/lego-mindstorms-ev3-source-code-available/
  [6]: https://github.com/mindboards/ev3sources
