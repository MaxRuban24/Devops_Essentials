#!/bin/bash

sum=0
for i in $@; do

    (( sum += $i ))
    done
    echo "Sum: $sum"

count=$#
for i in $@; do
    (( count == $i ))
    done
    echo "Args number: $i"


    avg=$(( $sum / $# ))
    echo "Avg result: $avg"

