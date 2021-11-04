#! /bin/bash

#File conditions
#True if 
#-d file is in a directory
#-e file exists
#-f string is a file
#-g group id is set on a file
#-r file is readable
#-s file has a non-zero size
#-u user id is set on a file
#-w file is writable
#-x file is executable

file="test.txt"
if [ -f "$file" ]
then 
    echo "$file is a file"
else
    echo "$file is not a file"
fi
