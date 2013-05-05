#!/bin/sh
. spelunking.sh

ACTUAL=$(ping -c 1 'neidetcher.com' 2>&1)

if [ $? -eq 0 ] ; then 
   pass
else
   fail 'could not connect' 
fi


