#!/bin/bash

if [[ $# -gt 1 ]]
then echo "Too many arguments"
else 

    VAR=$1

    if [[ $((${#VAR}%2)) -ne 0 ]]
    then 
    echo "Odd"
    else 
    echo "Even"
    fi
fi





# read -p "Enter a number: " number
# if [[ $((number%2)) -eq 0 ]]
#     then echo "Even"
#     else echo "Odd"
#     fi