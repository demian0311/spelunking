#!/bin/sh
. spelunking.sh

ACTUAL=$(nmap -P0 -p 80 neidetcher.com 2>&1)
echo $ACTUAL | grep -q "80/tcp open http"

evaluateLastStatus "port not open"
