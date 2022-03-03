#!/bin/bash

myvar=$( ls | wc -l )
echo "There are $myvar entries in the directory $(pwd)"

files=$( ls )

counter=1

for file in $files
do
    echo "$(( counter++ )) - $file"
done

