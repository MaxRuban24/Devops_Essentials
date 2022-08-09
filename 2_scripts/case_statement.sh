#!/bin/bash

case $1 in

start)
    echo "Service started"
    sleep 9999 &
    pid=$!
    ;;

stop)
    echo $pid
    killall sleep
    echo "Service stopped"
    ;;

restart)
    echo $pid
    killall sleep
    echo "Service stopped"
    echo "Service started"
    sleep 9999 &
    pid=$!
    ;;

*)
    echo "usage: $0 [start|stop|restart]"
    ;;
esac