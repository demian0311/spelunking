#!/bin/sh
. spelunking.sh
EXPECTED="Search the world's information"
ACTUAL=$(curl -s 'http://www.yahoo' 2>&1)

responseContains "$EXPECTED" "$ACTUAL" 
