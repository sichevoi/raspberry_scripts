#!/bin/sh
set -x
while [ 1 ] 
do
    sudo ifconfig wlan0 down
    sleep 30
    sudo ifconfig wlan0 up
    sleep 30
done

