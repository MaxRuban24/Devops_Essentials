#!/bin/bash

if [[ $# -gt 0 ]] ; then

    sum1=$(($1+$2))
    sum2=$(($2+$3))
    sum3=$(($3+$4))
    sum4=$(($4+$5))
    sum5=$(($5+$6))
    sum6=$(($6+$7))
    sum7=$(($7+$1))
    echo $sum1 $sum2 $sum3 $sum4 $sum5 $sum6 $sum7

        for i in $( eval echo Arg{1..$#}: ); do 
        echo $i $1
        shift
        
        done

else
    echo "ERROR: no arguments"
fi