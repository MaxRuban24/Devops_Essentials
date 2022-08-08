#!/bin/bash

echo "this script is $0"
echo "ALL arguments: $*"
echo "number of arguments here: $#"
echo "2nd and 4th args are $2 and $4"
[[ $1 != $2 ]]
echo $?

echo "end of the script"