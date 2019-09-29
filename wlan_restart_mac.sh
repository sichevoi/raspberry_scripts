#!/bin/bash
set -x

macs=( "b8:27:eb:43:8f:e4" 
	"9e:96:f1:20:0c:85" 
	"c6:04:2e:aa:f6:6a" 
	"4a:93:6c:64:1c:31"
	"66:14:4f:cf:9d:f3")

while [ 1 ] 
do
    for mac in "${macs[@]}"; do
        sudo ifconfig wlan0 down
        sudo macchanger -m "${mac}" wlan0
        sudo ifconfig wlan0 up

        sleep 20
        ping -c 10 8.8.8.8
        wget -T 60 -t 3 http://ipv4.download.thinkbroadband.com/200MB.zip -O- -o- -b
        wget -T 60 -t 3 http://speed.hetzner.de/100MB.bin -O- -o- -b
        wget -T 60 -t 3 http://speedtest-ny.turnkeyinternet.net/100mb.bin -O- -o- -b
        wget -T 60 -t 3 http://speedtest.tele2.net/100MB.zip -O- -o- -b
        # wget -T 60 -t 3 http://212.183.159.230/200MB.zip -O- -o- -b
        sleep 60
        ping -c 10 216.58.211.110
    done
done

