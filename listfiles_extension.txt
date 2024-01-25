#!/bin/bash
echo "Enter the directory path:"
read directory
echo "Enter the file extension:"
read extension

if [ -d $directory ]; then
    echo "List of $extension files in $directory:"
    find $directory -type f -name "*.$extension"
else
    echo "Directory not found."
fi
