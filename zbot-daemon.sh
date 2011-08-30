#!/bin/bash

usage () {
    echo "usage: $0 (satrt|stop)"
}

start () {
    running
    if [  "$RUNNING" != "" ]; then
        echo "already running:"
        echo $RUNNING
        exit 1
    fi
    ( ./zbot.pl >>/var/log/chatbot/chatbot.log 2>&1 & )
}

stop () {
    running
    PID=$( echo $RUNNING | awk '{ print $2}' )
    while [ "$RUNNING" != "" ]; do 
       kill_pid 
       sleep 1
       running
    done   
}

running () {
    RUNNING=$( ps auxw | grep "zbot.p[l]" )
}

kill_pid () {
    kill $PID
}

if [ "$1" == "" ]; then
    usage
    exit 2
fi

case $1 in
    "start")
        start
    ;;
    "stop")
        stop
    ;;
    *)
        usage
    ;;
esac
