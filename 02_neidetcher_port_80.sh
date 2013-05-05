#!/bin/sh
. spelunking.sh

ACTUAL=$(nmap -P0 -p 80 neidetcher.com)
echo $ACTUAL | grep -q "80/tcp open http"

evaluateLastStatus "port not open"
