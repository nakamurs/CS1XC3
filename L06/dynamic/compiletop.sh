#!/bin/bash

#if the user hasn’t provided any arguments to the script, display
#a message asking them to provide one, and what its purpose is.

if [ "$#" -lt 1 ]; then
    echo "Please provide an argument. The first argument is the path to the shared object library, which is used to compile 'top.c'"
else
    #compile top.c   
    gcc -L"$1" -Wl,-rpath="$1" -Wall -o test top.c -lLab6Part5
fi
