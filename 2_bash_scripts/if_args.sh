#!/bin/bash

if [[ $# -lt 1 ]]

then echo "There are no arguments"

else 
    
    if [[ $# -lt 2 ]]
    then echo $@
    elif [[ $# -gt 2 ]] && [[ $# -lt 4 ]]
    then echo ${@: -1}
    else echo "Invalid number of arguments: one OR three arguments required"
    fi
fi
    
