#!/bin/bash

# Use First Argument As Working Directory
WDIR="$1"
cd "$WDIR"
FILE="file1.txt"

if [ "$2" -eq 1 ] ; then
    if [-f $FILE ] ; then
	:
    else
	touch $FILE
	echo "$USER" > file1.txt
    fi
elif [ "$2" -eq 2 ] ; then
    if [-e $FILE] ; then
	mkdir backup
	cp $FILE /backup
    fi
fi

if [ "$2" -eq 3 ] ; then
    if [-e "backup/"$FILE] ; then
	cp "backup/"$FILE /L04
	rm backup/$FILE
    fi
fi

if ["$#" -ge 3] ; then
    FILE="$3"
fi


    

echo "Finished"
