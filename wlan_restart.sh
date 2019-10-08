#!/bin/sh
set -x
while [ 1 ] 
do
    sudo ifconfig wlan0 down
    sleep 20
    sudo ifconfig wlan0 up
    sleep 20
    ping -c 10 8.8.8.8
    wget -T 60 -t 3 http://ipv4.download.thinkbroadband.com/512MB.zip -O tmp.tmp
    ping -c 10 216.58.211.110
done

