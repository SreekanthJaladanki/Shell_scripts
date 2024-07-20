#!/bin/bash
echo "Enter the directory name"
read directory

#Example(directory="/path/to/files")

for file in "$directory"/*; do
    echo "file name: $file"
done
