#!/bin/bash
# Lab 03 - Variables
# Assigning and printing variables, reading user input, arithmetic,
# and positional parameters.

#1.
a="HEllo WORLd"
echo $a

#2.
b="Awais"
c="Ahmed"
echo $c $b

#3.
read -p "Enter your name:" name
echo "Hi there $name, have a good day"

#4.
X=3
Y=5
sum=$((X+Y))
echo $sum

#5.
A=$1
B=$2
sum=$((A+B))
echo $sum
