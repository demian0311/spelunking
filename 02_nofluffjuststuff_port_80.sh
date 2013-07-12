#!/bin/sh
. ./spelunking

ACTUAL=$(nmap -p 80 nofluffjuststuff.com 2>&1)
echo $ACTUAL | grep -q "80/tcp open http"

evaluateLastStatus "port not open"
