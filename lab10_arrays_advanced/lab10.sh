#!/bin/bash
# Lab 10 - Arrays (Practical Applications)
# Sorting, searching, summing, categorizing files, and checking for
# missing expected log files.

file_sizes=(500 200 700 100 300)
echo "Original: ${file_sizes[@]}"

sorted_sizes=($(printf "%s\n" "${file_sizes[@]}" | sort -n))
echo "Sorted: ${sorted_sizes[@]}"

logged_in_users=("alice" "bob" "charlie" "root")
user_to_find="charlie"
found=0
for user in "${logged_in_users[@]}"; do
    if [[ "$user" == "$user_to_find" ]]; then
        found=1
        break
    fi
done

if [[ $found -eq 1 ]]; then
    echo "User '$user_to_find' was found."
else
    echo "User '$user_to_find' was not found."
fi

numbers=(10 20 30 40 50)
sum=0
for num in "${numbers[@]}"; do
    ((sum += num))
done
echo "Array: [${numbers[@]}]"
echo "Sum: $sum"

download_files=("report.docx" "image.png" "script.js" "malware.exe" "data.bat")
echo "Suspicious files:"
for file in "${download_files[@]}"; do
    case "$file" in
        *.exe|*.bat)
            echo "  - $file"
            ;;
    esac
done

expected_logs=("system.log" "auth.log" "cron.log" "kern.log")
DUMMY_LOG_DIR="/tmp/dummy_logs"
mkdir -p "$DUMMY_LOG_DIR"
touch "$DUMMY_LOG_DIR/system.log"
touch "$DUMMY_LOG_DIR/cron.log"

echo "Missing log files:"
for log_file in "${expected_logs[@]}"; do
    if [[ ! -f "$DUMMY_LOG_DIR/$log_file" ]]; then
        echo "  - $log_file"
    fi
done
rm -rf "$DUMMY_LOG_DIR"

files_to_categorize=("report.docx" "image.png" "data.csv" "script.py" "log.txt")
declare -A categories
categories[Documents]=""
categories[Images]=""
categories[Scripts]=""
categories[Logs]=""
categories[Data]=""
categories[Other]=""

for file in "${files_to_categorize[@]}"; do
    case "$file" in
        *.docx|*.pdf) categories[Documents]+="$file ";;
        *.png|*.jpg|*.gif) categories[Images]+="$file ";;
        *.py|*.sh) categories[Scripts]+="$file ";;
        *.log|*.txt) categories[Logs]+="$file ";;
        *.csv|*.json) categories[Data]+="$file ";;
        *) categories[Other]+="$file ";;
    esac
done

for category in "${!categories[@]}"; do
    if [[ -n "${categories[$category]}" ]]; then
      echo "$category: ${categories[$category]}"
    fi
done
