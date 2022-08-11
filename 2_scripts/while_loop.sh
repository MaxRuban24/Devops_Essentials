#!/bin/bash


while :
do
    # show menu
    echo "  CHOOSE COMMAND NUMBER  "
    echo "-------------------------"
    echo "1. Show specified directory contents"
    echo "2. Show directory where you're currently located"
    echo "3. Say Hello to yourself"
    echo "4. Exit"
    read -r -p "Enter your choice [1-4] : " choice

    #take action
    case $choice in

        1) read -r -p "Type directory path: " dir
           ls $dir
            ;;
        
        2) pwd
            ;;

        3) echo "Hello `whoami`"
            ;;

        4) break
            ;;

        *) "Please select [1-4]"
    esac
done  