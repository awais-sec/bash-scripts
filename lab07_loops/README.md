# Lab 07 — Loops

**Script:** [`lab07.sh`](lab07.sh)

## What I did

This lab covered `for`, `while`, and `until` loops, plus a couple of small
"security"-flavored checks that reused looping over files — flagging
suspicious `.exe`/`.bat` downloads and encrypted `.zip`/`.rar` backups, and
using `find` to spot unusually large files.

- `for i in {1..10}` — counting loop
- `while` with a step increment/decrement
- Iterating over the words in a string, and over the output of `who`
- `until` loop for a password-retry prompt (`read -s` for hidden input)
- Looping over glob patterns to flag suspicious file types
- `find ... -size +100M -exec ls -lh {} +` to list large files

## Code

```bash
for i in {1..10}; do
        echo $i
done

i=2
while [ $i -le 20 ]; do
        echo $i
        i=$(( i + 2 ))
done

until [ "$password" == "123" ]; do
  read -s -p "Enter password: " password
  echo
done
echo "Access granted!"

for file in ~/Downloads/*.{exe,bat}; do
  [ -e "$file" ] && echo "Suspicious file found: $file"
done

find ~/Downloads -type f -size +100M -exec ls -lh {} +

for file in ~/backup/*.{zip,rar}; do
  [ -e "$file" ] && echo "Encrypted file found: $file"
done
```

> Note: the countdown loop (`while [ $num -ge 1 ]`, counting down from 5) was
> missing its decrement and closing `done` in the original — that would have
> caused an infinite loop. I fixed it in the committed script and marked the
> fix with a comment.

*(No screenshot for this lab — it was submitted as a plain script file.)*
