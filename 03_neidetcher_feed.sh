#!/bin/sh
. spelunking.sh

URL='http://feeds.feedburner.com/neidetcher'
EXPECTED='Scala compiler'

FEED_XML=$(wget -qO- $URL)
echo $FEED_XML | grep -q "$EXPECTED"

evaluateLastStatus "could not find '$EXPECTED' in $URL"
