# Lab 10 — Arrays (Practical Applications)

**Script:** [`lab10.sh`](lab10.sh)

## What I did

This lab built on Lab 09 by applying arrays to more realistic tasks: sorting
a numeric array, searching an array for a specific value, summing an array,
flagging suspicious file extensions, checking for missing expected log
files, and categorizing a list of files into buckets using an associative
array (`declare -A`).

- Sorting an array numerically by piping through `sort -n`
- Linear search through an array with a `found` flag and `break`
- Summing array elements in a loop
- `case` matching on file extensions to flag suspicious files (`.exe`/`.bat`)
- Checking a list of expected files against what actually exists on disk
- An associative array (`declare -A`) to categorize files by type

## Code

```bash
sorted_sizes=($(printf "%s\n" "${file_sizes[@]}" | sort -n))

found=0
for user in "${logged_in_users[@]}"; do
    if [[ "$user" == "$user_to_find" ]]; then
        found=1
        break
    fi
done

for file in "${download_files[@]}"; do
    case "$file" in
        *.exe|*.bat) echo "  - $file" ;;
    esac
done

for log_file in "${expected_logs[@]}"; do
    if [[ ! -f "$DUMMY_LOG_DIR/$log_file" ]]; then
        echo "  - $log_file"
    fi
done

declare -A categories
for file in "${files_to_categorize[@]}"; do
    case "$file" in
        *.docx|*.pdf) categories[Documents]+="$file " ;;
        *.png|*.jpg|*.gif) categories[Images]+="$file " ;;
        *.py|*.sh) categories[Scripts]+="$file " ;;
        *.log|*.txt) categories[Logs]+="$file " ;;
        *.csv|*.json) categories[Data]+="$file " ;;
        *) categories[Other]+="$file " ;;
    esac
done
```

Full script: see [`lab10.sh`](lab10.sh).

*(No screenshot for this lab — it was submitted as a Word document with plain text.)*
