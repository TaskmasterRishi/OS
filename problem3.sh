#!/bin/bash

# Get the current directory path
directory=$(pwd)

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory '$directory' not found."
    exit 1
fi


