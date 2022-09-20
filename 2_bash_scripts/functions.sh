#!/bin/bash

# Tasks:

# - create a script that does the following:
#has a function that multiplies the argument passed to it by itself and outputs to the console
#has 2d function that passes each argument passed to the script to the 1st function and increases the result by 1 and outputs to the console
# - run your function with the following arguments: 5 6 1 3 9


# function that multiplies an element by itself

function first () {
    
    for (( i=1 ; i<=$# ; i++ ))
    do
        echo "$(( ${!i}*${!i} ))"
        
    done
}

first $@

echo "-------------------------------------------------------------"

# function that passes each argument passed to the script
# to the 1st function and increases the result by 1 and outputs to the console

function second () {
     
    for j in $@
    do
        echo "$(( $(first $j) + 1 ))" 
        
    done
}

second $@ 