#!/bin/bash
#Scripting Languages
#Portfolio 1
#Task 3

#Prompt user to input directory and save it too dirname
read -p ' Please enter the directory you would to search: ' dirname
echo " $dirname contains: "

#Set all variable to 0
filedata=0
empfile=0
nonempdir=0
empdir=0

#For each item in directory a variable is saved with a counter
#Empty variable were done before as it makes the code easier
for i in  *; do
    #File is empty
    if  [ ! -s $i ]; then
        ((empfile=$empfile+1))
    #File
    elif [ -f $i ]; then
        ((filedata=$filedata+1)) 
    #Empty directory 
    elif [ -z "$(ls -A $i)" ]; then
        ((empdir=$empdir+1))  
    #Directory
    elif [ -d $i ]; then
        ((nonempdir=$nonempdir+1))
    fi
done

#User is prompt on what files and directory are in the selected directory
echo -e "$filedata files contain data"
echo -e "$empfile files are empty"
echo -e "$nonempdir non-empty directories "
echo -e "$empdir empty directiories"


exit 0
