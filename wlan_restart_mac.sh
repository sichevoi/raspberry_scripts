#!/bin/sh
set -x
while [ 1 ] 
do
    sudo ifconfig wlan0 down
    sudo macchanger -r wlan0
    sudo ifconfig wlan0 up

    sleep 20
    ping -c 10 8.8.8.8
    wget -T 60 -t 3 http://ipv4.download.thinkbroadband.com/200MB.zip -O- -o- -b
    wget -T 60 -t 3 http://speed.hetzner.de/100MB.bin -O- -o- -b
    wget -T 60 -t 3 http://speedtest-ny.turnkeyinternet.net/100mb.bin -O- -o- -b
    wget -T 60 -t 3 http://speedtest.tele2.net/100MB.zip -O- -o- -b
    wget -T 60 -t 3 http://212.183.159.230/200MB.zip -O- -o- -b
    sleep 300
    ping -c 10 216.58.211.110
done

