#!/bin/bash

## ask the user to enter a filename
read -p "Please enter a file name: " filename

if [[ -f $filename ]]
then 
    echo "The file: $filename exists already .."
    echo "------- We are processing your order ------"
    sleep 3
    echo "Moving on ..."
else
    touch $filename
    echo "Creating the file: $filename"
    sleep 3
    echo "File: $filename created successfully!"
fi