#!/bin/bash

# Use First Argument As Working Directory
WDIR="$1"
cd "$WDIR"

if [ "$2" -eq 1 ] ; then
    if [-f "file1.txt" ] ; then
	:
    else
	touch "file1.txt"
	echo "$USER" > file1.txt
    fi
elif [ "$2" -eq 2 ] ; then
    if [-e "file1.txt"] ; then
	mkdir backup
	cp "file1.txt" /backup
    fi
elif [ "$2" -eq 3 ] ; then
    if [-e "backup/file1.txt"] ; then
	cp "backup/file1.txt" /L04
	rm backup/file1.txt
    fi
fi

echo "Finished"
