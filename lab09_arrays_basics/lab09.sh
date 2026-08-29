#!/bin/bash
#ARRAYS

#1. Declaring Array
Fruit=("banana" "mango" "kiwi" "tomato" "guava")

for Fruit in "${Fruit[@]}"; do
	echo "$Fruit"
done

#2. Adding & removing values
lan=("C++" "Python" "Rubi")
lan+=("Bash")
unset lan[0]
echo "Programming Languages: ${lan[@]} "

#3. Count Elements
ext=(".txt" ".log" ".config" ".zip" ".tar")
count="${#ext[@]}"
echo "No. of elements: $count"

#4. Printing specific elements
tools=("Autopsy" "FTK" "RegRipper" "RegistryExplorer" "nMap")
echo "1: ${tools[1]} 4: ${tools[3]}"
