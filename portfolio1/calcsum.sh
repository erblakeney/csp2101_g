#!/bin/bash
 
#Task 1

let result=$1+$2+$3

if [ $result -ge 31 ]; then
    echo "Sum exceeds maximum allowable"
else
    echo "The sum of $1 and $2 and $3 is $result"
    exit 1
fi
exit 0