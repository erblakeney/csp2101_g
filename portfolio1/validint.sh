#!/bin/bash
#Scripting Languages
#Portfolio 1
#Task 2

#Will do loop untill statement is true
while true; do 
    read -p 'Please enter 20 or 40: ' num  # Prompt the user what to enter and saves it as a variable called num
    echo "You have entered $num" # Informs user what they have entered

    #If a letter is entered then user is prompted that it is not a integer
    if [[ $num =~ [A-Z||a-z] ]]; then
        echo 'A integer was not entered, please try again'
    #If sum is 20 or 40 then user is prompted that they are correct
    elif [ "$num" = 40 -o "$num" = 20 ]; then
        echo 'Correct!'
        break #break will end the while statement
    #If a number is entered that is not 20 or 40 then user is prompt that the entry is incorrect
    else   
        echo "Incorrect number entered, please try again"
    fi
done
exit 0
 
