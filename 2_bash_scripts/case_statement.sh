#!/bin/bash

case $1 in

start)
	sleep 9999 &
    	pid=($!)
    	echo $pid
    	echo "Service started"
;;

stop)
	sid=$(ps a | grep sleep | grep -v grep | cut -c 1-7)
	echo $sid	
	kill $sid && echo "Service stopped"
;;

restart)
    	sid=$(ps a | grep sleep | grep -v grep | cut -c 1-7)
        echo $sid
        kill $sid && echo "Service stopped"

	sleep 2

	sleep 9999 &
        pid=($!)
        echo $pid
        echo "Service started"
	;;

*)
    echo "usage: $0 [start|stop|restart]"
    ;;
esac
