#!/bin/bash

if [ $# -lt 1 ] ; then
	echo -e "\nNeed target directory\n"
	echo -e "(e.g. $(basename $0) /usr/local/bin)\n"
	exit 1
fi

TARGET=$1

if [ ! -d $TARGET ] ; then
	echo -e "\nDirectory $TARGET missing...\n"
	exit 1
fi

sudo /bin/cp -av quicksystemctl \
	sdaemonreload \
	sdisable \
	senable \
	slist \
	sreload \
	srestart \
	sstart \
	sstatus \
	sstop \
	$TARGET

