#!/bin/bash
#Scripting Languages
#Portfolio 1
#Task 1


#Adds all 3 results put in by user as a variable called result
let result=$1+$2+$3

#If input is equal to or greater then 31 then user will be informed
#Else, all 3 inputs are diplayed and the total displayed
if [ $result -ge 31 ]; then
    echo "Sum exceeds maximum allowable"
else
    echo "The sum of $1 and $2 and $3 is $result"
    exit 1
fi
exit 0
