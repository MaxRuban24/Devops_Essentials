#!/bin/bash

[[ $1 == $2 ]]   
echo $?
[[ ${#1} > ${#2} ]]   
echo $?
[[ -n $TEST ]]   
echo $?
[[ $3 -ne $4 ]]   
echo $?
[[ $3 -ge $4 ]]   
echo $?
