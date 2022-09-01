#!/bin/bash

while :
do


    read -r -p "Enter command: " command

    if [ $command == hi ]; then
        echo "Hello `whoami`"
    
    else

        $command
    fi
done