# Lab 06 — Conditionals

**Script:** [`lab06.sh`](lab06.sh)

## What I did

This lab worked through the different flavors of `if`/`elif`/`else` and
`case` in bash: checking whether files/directories exist, comparing two
numbers, checking even vs. odd, checking for an empty string, checking file
permissions, and finally building a small calculator with a `case` statement
(including a guard against dividing by zero).

- `[ -f file ]` / `[ -d dir ]` — file and directory existence tests
- `-gt` / `-lt` — numeric comparison
- `$(( number % 2 ))` — modulo to check even/odd
- `[ -z "$string" ]` — empty string test
- `-r` / `-w` / `-x` — read/write/execute permission tests
- `case` statement for a `+ - * /` calculator, with a divide-by-zero check

## Code

```bash
if [ -f "test.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

if [ $((number % 2)) -eq 0 ]; then
    echo "The number is EVEN"
else
    echo "The number is ODD"
fi

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
```

Full script with all the checks (file exists, dir exists, number comparison,
even/odd, empty string, permissions, calculator): see [`lab06.sh`](lab06.sh).

*(No screenshot for this lab — it was submitted as a plain script file.)*
