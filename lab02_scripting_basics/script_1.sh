#!/bin/bash
# Lab 02 - Scripting Basics
# Directory creation/navigation, permissions, date, aliases, and arithmetic.

mkdir my_folder
cd my_folder
echo "Directory 'folder' created and entered"

cd ..

chmod u+x script_1.sh
echo "Permission changed, 'script_1.sh' is now executable"

echo "Today's date is: $(date)"

alias la="ls -a"
echo "Alias 'la' set to show hidden files"

sum=$((5+3))
echo "The sum of 5 and 3 is: $sum"
