#!/bin/bash
ssh andrew@cyberchilts "cd /pcaps; mkdir $1"
scp $2 andrew@cyberchilts:/pcaps/$1/
if [ "$?" = "0" ]; then
	echo "Backed up file $2 to cyberchilts:/pcaps/"$1"/"
	rm  $2
	exit 0
else
	echo "Cannot backup pcap file. SSH error"
	exit 1
fi