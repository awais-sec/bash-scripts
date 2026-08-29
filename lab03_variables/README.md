# Lab 03 — Variables

**Script:** [`lab03.sh`](lab03.sh)

## What I did

This lab was about variables: assigning strings and numbers, printing them
back out, reading a value in from the user with `read`, doing arithmetic
with variables, and using positional parameters (`$1`, `$2`) passed in on
the command line.

- Assigning and printing string variables
- `read -p` to prompt for and capture user input
- Arithmetic expansion on variables
- Positional parameters (`$1`/`$2`) for arguments passed to the script

## Code

```bash
a="HEllo WORLd"
echo $a

b="Awais"
c="Ahmed"
echo $c $b

read -p "Enter your name:" name
echo "Hi there $name, have a good day"

X=3
Y=5
sum=$((X+Y))
echo $sum

A=$1
B=$2
sum=$((A+B))
echo $sum
```

## Output

![lab03 output](../assets/lab03_variables.png)
