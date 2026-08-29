#!/bin/bash
#Function & Libraries

#1. Create and Call function
welcome() {
	echo "Welcome to Shell scripting Lab"
}
welcome

#2. With Arguments
greet_user() {
	echo "Hello, $1!"
}
greet_user Awais
greet_user Ahmed
greet_user Shaka

#3. Function Returning Value
calculate_area() {
	local length=$1
	local width=$2
	local area=$((length * width))
	echo $area
}

result=$(calculate_area 50 20)
echo "Area is: $result"

#4. With Conditional logic
check_number() {
	if [ $1 -gt 0 ]; then
		echo "Number is positive"
	elif [ $1 -lt 0 ]; then
		echo "Number is negative"
	else
		echo "Number is zero"
	fi
}

check_number 2

#5. For File Operations
count_lines() {
	if [ -f "$1" ]; then
		lines=$(wc -l < $1)
		echo "File "$1" has $lines line/s"
	else
		echo "File doesn't exist"
	fi
}

count_lines sam.txt

#6. Using math library
source ./math_library.sh

echo "Addition: $(add 10 5)"
echo "Subtraction: $(subtract 10 5)"
echo "Multiplication: $(multiply 10 5)"
echo "Division: $(divide 10 5)"

#7. Input validity function
validate_number() {
  if [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Valid positive integer."
  else
    echo "Invalid input."
  fi
}

validate_number 123
