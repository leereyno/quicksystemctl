#!/bin/bash

if [ $# -ge 1 ] ; then
	TARGET=$1
else
	TARGET=/usr/local/bin
fi

if [ ! -d $TARGET ] ; then
	echo -e "\nDirectory $TARGET missing...\n"
	exit 1
fi

sudo cp -a \
	quicksystemctl \
	sstart \
	sstop \
	sstatus \
	senable \
	sdisable \
	$TARGET


