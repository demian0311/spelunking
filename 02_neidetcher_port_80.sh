#!/bin/sh
. spelunking.sh

HOST='neidetcher.com'
PORT='80'

ACTUAL=$(nmap -P0 -p 80 neidetcher.com)
echo $ACTUAL | grep -q "80/tcp open http"

if [ $? -eq 0 ] ; then 
   pass
else
   fail "port not open"
fi
