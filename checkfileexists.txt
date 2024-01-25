#!/bin/bash
filename="example.txt"

# Check if file exists
if [ -e "$filename" ]; then
    echo "$filename exists."
else
    echo "$filename does not exist."
fi

# Read and print contents of the file
while read line; do
    echo "$line"
done < "$filename"