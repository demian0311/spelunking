#!/bin/sh
. spelunking.sh

HOST="magicalunicornservice.com"
ACTUAL=$(nmap -P0 -p 80 $HOST 2>&1)
echo $ACTUAL | grep -q "Failed to resolve given hostname"

evaluateLastStatus "service is up, go integrate in production"

# /etc/hosts -- to simulate it coming up
# 127.0.0.1 magicalunicornservice.com
