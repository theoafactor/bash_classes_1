#!/bin/bash

echo "---- NoteTaker v1.0.0 ----"
echo "
    1. Create file 
    2. Create directory
    3. Recreate file
    4. Recreate directory
    5. Write to file
    6. Delete file
    7. Delete directory
"
read -p "Enter a number from the menu: " option

echo "You chose $option!"

if [[ $option == "1" ]]
then
    read -p "Enter the file name: " filename 
    if [[ -f $filename ]]
    then
        echo "File: $filename exists already"
    else
        touch $filename
        echo "file: $filename created successfully!"
    fi

elif [[ $option == "2" ]]
then 
    read -p "Enter the directory name to be created: " directoryname
    
    if [[ -d $directoryname ]]
    then
        echo "The directory: $directoryname exists already"
    else
        mkdir $directoryname
        echo "directory: $directoryname created successfully!" 
    fi

elif [[ $option == "5" ]]
then
    echo "--- Writing to file ---"
    read -p "Please enter filename to write to: " filename

    ## check to see of the file exists
    if [[ -f $filename ]]
    then
        read -p "> " note
        echo $note >> $filename
        echo "Note saved successfully!"
    else
        echo "No such file: $filename"
        echo "Aborting"
    fi


fi


