#!/bin/bash
# Lab 06 - Conditionals
# File/directory existence tests, number comparison, even/odd check,
# empty-string check, permission checks, and a simple calculator.

# 1. Check if a file exists
if [ -f "test.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

# 2. Check if a directory exists
if [ -d "backup" ]; then
    echo "Directory exists"
else
    echo "Directory does not exist"
fi

# 3. Compare two numbers
echo -n "Enter first number: "
read num1
echo -n "Enter second number: "
read num2

if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater than $num2"
elif [ "$num1" -lt "$num2" ]; then
    echo "$num2 is greater than $num1"
else
    echo "Both numbers are equal"
fi

# 4. Check if a number is EVEN or ODD
echo -n "Enter a number: "
read number
if [ $((number % 2)) -eq 0 ]; then
    echo "The number is EVEN"
else
    echo "The number is ODD"
fi

# 5. Check for empty string
echo -n "Enter a string: "
read input_string
if [ -z "$input_string" ]; then
    echo "String is empty"
else
    echo "You entered: $input_string"
fi

# 6. Check file permissions
file="sample.txt"
if [ -e "$file" ]; then
    echo "Checking permissions for $file..."
    [ -r "$file" ] && echo "Read permission available" || echo "No read permission"
    [ -w "$file" ] && echo "Write permission available" || echo "No write permission"
    [ -x "$file" ] && echo "Execute permission available" || echo "No execute permission"
else
    echo "$file does not exist"
fi

# 7. Simple calculator
echo -n "Enter first number: "
read a
echo -n "Enter second number: "
read b
echo -n "Enter operator (+, -, *, /): "
read op

case "$op" in
    "+") echo "Result: $(($a + $b))" ;;
    "-") echo "Result: $(($a - $b))" ;;
    "*") echo "Result: $(($a * $b))" ;;
    "/") 
        if [ "$b" -ne 0 ]; then
            echo "Result: $(($a / $b))"
        else
            echo "Error: Division by zero is not allowed"
        fi
        ;;
    *) echo "Invalid operator" ;;
esac
