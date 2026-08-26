#!/bin/bash
# Lab 12 - File Operations
# Line counting, previewing the first lines of a file, searching for a
# word, and merging two files.

#1.
read -p "Enter file name: " file
if [[ -f "$file" ]]; then
	lines=$( wc -l < "$file" )
	echo "No of lines in $file: $lines "
else
	echo "File not found"
fi
echo "$file"

#2.
read -p "Enter file name: " file
if [[ -f "$file" ]]; then
	echo "First 5 Lines: "
	head -n 5 "$file"
else
	echo "File not found"
fi

#3. Search for Word in a file
read -p "Enter word: " word
read -p "Enter file name: " file
if [[ -f "$file" ]]; then
	echo "Searching for '$word' in '$file': "
	grep "$word" "$file"
else
	echo "File not found"
fi

#5. Merge Two Files
read -p "Enter first filename: " file1
read -p "Enter second filename: " file2
if [[ -f "$file1" && -f "$file2" ]]; then
	cat "$file1" "$file2" > merged.txt
	echo "File merged successfully"
else
	echo "Check if both files exist!"
fi
