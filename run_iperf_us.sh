#!/bin/sh
while [ 1 ] 
do
	iperf3 -c 10.15.168.3 -P 8 -p 5110 -t 86400
        sleep 50
done
