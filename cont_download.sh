#!/bin/sh
while [ 1 ] 
do
	timeout 60 wget http://ipv4.download.thinkbroadband.com/512MB.zip -O tmp.tmp
        sleep 40
done
