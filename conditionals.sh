#!/bin/bash

# create an if statement
read -p "Please enter your name " username

if [[ $username == "James" ]]
then
    echo "Welcome user"
else 
    echo "This user does not exist"
fi
