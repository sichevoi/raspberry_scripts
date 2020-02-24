#!/bin/sh
while [ 1 ] 
do
	wget -T 60 -t 3 http://ipv4.download.thinkbroadband.com/512MB.zip -O tmp.tmp -o-
        sleep 40
done
