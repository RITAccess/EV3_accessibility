#/bin/sh

if [[ $EUID != 0 ]]; then
	echo "This script needs super cow powers, please run as root"
	exit 1;
fi

echo "Creating Filesystem..."
./scripts/make_ev3_os.sh

echo "Creating Image..."
./scripts/make_image.pl
