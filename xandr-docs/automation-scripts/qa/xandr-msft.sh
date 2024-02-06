#!/bin/bash

# Check if folder argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <folder>"
    exit 1
fi

# Iterate through files in the folder
for file in "$1"/*; do
    # Check if file is a regular file
    if [ -f "$file" ]; then
        # Replace "Xandr" with "Microsoft Advertising" using sed and update original file with mktemp
        sed -i -e 's/Xandr/Microsoft Advertising/g' "$file"
    fi
done
