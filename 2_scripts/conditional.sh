#!/bin/bash

[[ $1 == $2 ]]   
echo $?
[[ $1 > $2 ]]   
echo $?
[[ $TEST -gt 0 ]]   
echo $?
[[ $3 -ne $4 ]]   
echo $?
[[ $3 -ge $4 ]]   
echo $?
