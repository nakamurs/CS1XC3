#!/bin/bash

#appends the directory containing the shared library to
#LD_LIBRARY_PATH (and exports it),

LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/nakamurs/CS1XC3/L06/dynamic"
export LD_LIBRARY_PATH

#runs the program,

./top

#resets the variable using unset

unset LD_LIBRARY_PATH
