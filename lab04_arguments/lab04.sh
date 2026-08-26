#!/bin/bash
# Lab 04 - Command-Line Arguments
# Script name, argument count, argument list, conditional on arguments,
# and swapping variable values.

#6.
echo "File_name: $0"

#7.
echo "No. of arguments: $#"

#8.
echo "Arguments are: $@"

#9.
if [ $# -eq 0 ]; then
	echo "No arguments provided"
else
	echo "Arguments provided: $1"
fi

#10.
var1="Hello"
var2="World"
echo "Before swap: var1 = $var1, var2 = $var2"
temp=$var1
var1=$var2
var2=$temp
echo "After swap: var1 = $var1, var2 = $var2"
