#!/bin/bash
# Find and display executable files in the current directory and its subdirectories
files=$(find . -type f -executable)

if [ -n "$files" ]; then
    echo "Executable files in $dir and its subdirectories:"
    echo "$files"
else
    echo "No executable files found in $dir and its subdirectories."
fi

