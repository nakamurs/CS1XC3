#!/bin/bash

# Use First Argument As Working Directory
WDIR="$1"
cd "$WDIR"
FILENAME="file1.txt"

if [ "$#" -ge 3 ] ; then
    FILENAME=$3
fi

if [ "$2" -eq 1 ] ; then
    if [ ! -f $FILENAME ] ; then
	echo $USER > $FILENAME
    fi
elif [ "$2" -eq 2 ] ; then
    if [ -f $FILENAME ] ; then
	mkdir ./backup
	cp $FILENAME ./backup
    fi
fi

if [ "$2" -eq 3 ] ; then
    if [ -f ./backup/$FILENAME ] ; then
	cp ./backup/$FILENAME $FILENAME
	rm ./backup/$FILENAME
    fi
fi

if [ "$#" -gt 3 ] ; then
    echo $4 > excess.txt
    for ((i=5 ; i <= "$#" ; i++ )) ; do
	echo ${!i} >> excess.txt
    done
fi
   
echo "Finished"
