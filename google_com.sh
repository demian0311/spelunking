#!/bin/sh
. spelunking.sh
EXPECTED="Search the world's information"
ACTUAL=$(curl -s 'http://www.google.com' 2>&1)

responseContains "$EXPECTED" "$ACTUAL" 
