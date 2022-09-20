#!/bin/bash

while :
do


    read -r -p "Enter command: " command

    if [ $command == hi ]; then
        echo "Hello `whoami`"

    elif [ -z $command ]; then
        echo "Input should not be empty"
    
    else

        $command
    fi
done