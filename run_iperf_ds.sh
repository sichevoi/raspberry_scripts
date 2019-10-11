#!/bin/sh
while [ 1 ] 
do
	iperf3 -c $AMSRDK_IP -P 8 -p $1 -t 86400 -R
        sleep 50
done
