#!/bin/sh
while [ 1 ] 
do
	iperf3 -c 10.15.168.3 -P 10 -p 5220
        sleep 50
done
