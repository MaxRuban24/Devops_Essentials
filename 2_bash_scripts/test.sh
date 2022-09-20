#!/bin/bash

mult() {
  for ((i=1 ; i<=$# ; i++)) 
  do

    echo "$(( ${!i}*${!i} ))"

  done
}

echo "Arguments passed to the function and multiplied by themselves:"
mult $@          # calling a function and passing arguments to it

echo "####################################################################################"

# definition of a function that passes each argument passed to the script
# to the 1st function and increases the result by 1 and outputs to the console
add() {
  for j in $@
  do

    echo "$(( $(mult $j) + 1 ))"

  done
}

echo "Arguments passed to the script to the mult() function and increases the result by 1:"
add mult $@    # calling a function's and passing arguments to it