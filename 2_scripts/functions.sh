#!/bin/bash

args=$@
function first () {
    
    for i in $args
    do
        echo $(( i * i ))
        shift
    done
}
out=$(first)
printf '%s\n' ${out[@]}

function second () {
    plus=$(($out+1))
    printf '%s\n' ${plus[@]}
#     #  for j in 
#     #  do
#     #   (( j++ ))
        
#     # done
}
second 