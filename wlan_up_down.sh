#!/bin/sh
set -x
while [ 1 ] 
do
	sudo ifconfig wlan0 down
        sleep 15
	sudo ifconfig wlan0 up
	sleep 15
done
