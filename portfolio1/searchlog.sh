#!/bin/bash
#Edmund Blakeney
#Student Number: 10467945
#CSP2101 - Scripting Languages
#Portfolio 1
#Task 4


#Will do loop untill statement is true
while true; do 
    read -p 'What pattern would you like to search for: ' pattern  # Prompt the user what to enter and saves it as variable called pattern
    
    #If variable called option is not between 1 to 4, then the user will be reprompted to enter
    while [[ $option != [1-4] ]]; do 
        echo -e "1)Whole word and not inverted\n2)Whole word and inverted\n3)Any match and not inverted\n4)Any match and inverted"
        read -p 'Please select your option [1, 2, 3 or 4] : ' option
        
        #This case statement will select  what user set variable option too [1, 2, 3 or 4]
        #User is informed of selection
        #Copy of access_log matching input is saved under variable 'result'
        #If there was no matching words then user is informed
        #Else, user is informed of the number of matches found
        #Each Line is displayed with corresponding line number
        #Then copy of matching lines is saved under file name output.txt
        case $option in
                #This variable saves line count of whole words
            1)  echo -e "You have selected whole word and not inverted"
                result="$(grep -wci "$pattern" access_log.txt)"
                if [ $result = 0 ]; then
                    echo "No matches found"
                else
                    echo  "$result matches found"
                    grep -win "$pattern" access_log.txt
                    grep -win "$pattern" access_log.txt > output.txt
                fi
                ;;
            #This variable saves line count of inverted whole words of user input
            2) echo "You have selected Whole word and inverted"
                result="$(grep -wciv "$pattern" access_log.txt)"
                if [ $result = 0 ]; then
                    echo "No matches found"
                else
                    echo  "$result matches found"
                    grep -winv "$pattern" access_log.txt
                    grep -winv "$pattern" access_log.txt > output.txt
                fi
                ;;
            #This variable saves line count of any match of user input 
            3) echo "You have selected any match and not inverted"
                result="$(grep -ci "$pattern" access_log.txt)"
                if [ $result = 0 ]; then
                    echo "No matches found"
                else
                    echo  "$result matches found"
                    grep -in "$pattern" access_log.txt
                    grep -in "$pattern" access_log.txt > output.txt
                fi
                ;;   
            #This variable saves line count of invert of any match the user inputs
            4) echo "You have selected any match and inverted"
                result="$(grep -civ "$pattern" access_log.txt)"
                if [ $result = 0 ]; then
                    echo "No matches found"
                else
                    echo  "$result matches found"
                    grep -inv "$pattern" access_log.txt
                    grep -inv "$pattern" access_log.txt > output.txt
                fi
                ;;

            #If incorrect input, user is informed
            *) echo -e "\nSorry that input is not valid, please try again\n"
        esac
    done

    #prompt user if they would like to search again else exits script
    read -p 'Press 1 if you would like to do another search: ' close
    if  [ $close != 1 ]; then
        echo -e '\nHave a great day and see you again soon!\n'
       break
    fi

    #Resets all required variables back to 0 if user wants to do another search
    option=0
    result=0 
    pattern=0

done
#exit the program
exit 0