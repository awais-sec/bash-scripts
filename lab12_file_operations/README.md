# Lab 12 — File Operations

**Script:** [`lab12.sh`](lab12.sh)

## What I did

The final lab combined several common file-handling tasks into one script:
counting the lines in a file, previewing the first few lines, searching a
file for a specific word, and merging two files into one.

- `wc -l < "$file"` — count lines in a file
- `head -n 5 "$file"` — preview the first N lines
- `grep "$word" "$file"` — search for a word inside a file
- `cat "$file1" "$file2" > merged.txt` — merge two files into a new one
- File-existence checks (`[[ -f "$file" ]]`) before operating on each file

## Code

```bash
read -p "Enter file name: " file
if [[ -f "$file" ]]; then
	lines=$( wc -l < "$file" )
	echo "No of lines in $file: $lines "
else
	echo "File not found"
fi

read -p "Enter file name: " file
if [[ -f "$file" ]]; then
	echo "First 5 Lines: "
	head -n 5 "$file"
fi

read -p "Enter word: " word
read -p "Enter file name: " file
if [[ -f "$file" ]]; then
	echo "Searching for '$word' in '$file': "
	grep "$word" "$file"
fi

read -p "Enter first filename: " file1
read -p "Enter second filename: " file2
if [[ -f "$file1" && -f "$file2" ]]; then
	cat "$file1" "$file2" > merged.txt
	echo "File merged successfully"
else
	echo "Check if both files exist!"
fi
```

## Output

**Line count, first-5-lines, and word search**

![lab12 file operations](../assets/lab12_1_file_ops.png)

**Merging two files**

![lab12 merge files](../assets/lab12_2_merge_files.png)
