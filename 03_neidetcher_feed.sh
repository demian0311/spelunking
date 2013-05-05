#!/bin/sh
. spelunking.sh

URL='http://feeds.feedburner.com/neidetcher'
EXPECTED='Scala compiler'

FEED_XML=$(wget -qO- $URL)
echo $FEED_XML | grep -q "$EXPECTED"

if [ $? -eq 0 ] ; then 
   pass
else
   fail "could not find '$EXPECTED' in $URL"
fi
