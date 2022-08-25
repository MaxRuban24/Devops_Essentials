#!/bin/bash

args=$@
function first () {
    
    for i in $args
    do
        echo $(( i * i ))
        shift
    done
}
first 
# out=$(first)
# printf '%s\n' ${out[@]} 

function second () {
    # plus=$(($*++))
    # printf '%s\n' $plus
     for j in $@
     do
      sum=$((j++))
      echo $sum
      shift
        
    done
}
second 