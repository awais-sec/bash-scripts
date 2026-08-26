#!/bin/bash
# Lab 05 - Wildcards and File Listing
# Using glob patterns to list files by extension and by name length,
# and creating test files.

echo "List of .txt files:"
ls *.txt

echo "Number of .log files: $(ls *.log | wc -l)"

echo "Files with names exactly 5 characters long:"
ls ?????.*

echo "List of .sh files:"
ls *.sh

touch test1 test 2 test3  # note: as originally written; creates 4 files: test1, test, 2, test3
