# Lab 05 — Wildcards & File Listing

**Script:** [`lab05.sh`](lab05.sh)

## What I did

This lab was about shell globbing (wildcards) for matching files: listing by
extension, counting matches, and matching by a fixed name length using `?`
as a single-character wildcard.

- `*.txt` / `*.sh` — match any file ending in a given extension
- `ls *.log | wc -l` — count how many files match a pattern
- `?????.*` — match filenames that are exactly 5 characters before the
  extension
- `touch` to create a few test files

## Code

```bash
echo "List of .txt files:"
ls *.txt

echo "Number of .log files: $(ls *.log | wc -l)"

echo "Files with names exactly 5 characters long:"
ls ?????.*

echo "List of .sh files:"
ls *.sh

touch test1 test 2 test3
```

> Note: the last line has a typo carried over from the original lab (a stray
> space), so it actually creates four files — `test1`, `test`, `2`, and
> `test3` — instead of three.

## Output

![lab05 output](../assets/lab05_wildcards.png)
