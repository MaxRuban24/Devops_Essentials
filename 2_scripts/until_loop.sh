#!/bin/bash

read -r -p "Enter filename: " newfile
touch $newfile 
filesize=$(stat -c%s $newfile)

until [[ $filesize -gt 1048576 ]]; do

    head -c 4KB /dev/urandom >> $newfile
    
    # if [[ $filesize -eq 8 ]]
    # then 
    #     echo "Filesize: 8"
    # elif [[ $filesize -eq 16 ]]
    # then
    #     echo "Filesize: 16"
    # elif [[ $filesize -eq 32 ]]
    # then
    #     echo "Filesize: 32"
    # elif [[ $filesize -eq 64 ]]
    # then
    #     echo "Filesize: 64"
    # elif [[ $filesize -eq 128 ]]
    # then
    #     echo "Filesize: 128"
    # elif [[ $filesize -eq 256 ]]
    # then
    #     echo "Filesize: 256"
    # elif [[ $filesize -eq 512 ]]
    # then
    #     echo "Filesize: 512"
    # elif [[ $filesize -eq 1024 ]]
    # then
    #     echo "Filesize: 1024"
    # else
    #     echo "Error"
    # fi
    
done

echo "END"

