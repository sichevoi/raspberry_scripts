#!/bin/sh
while [ 1 ] 
do
	iperf3 -c 10.15.168.3 -P 8 -p 5220 -t 86400 -R
        sleep 50
done
