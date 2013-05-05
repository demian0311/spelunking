#!/bin/sh
. spelunking.sh

# set up couchdb

HOST='http://127.0.0.1:5984/'
JSON='{
   "message": "hello world"
   }'

CREATE_RESULT=$(curl -k -s \
   -u 'demian:secret' \
   -X POST -d "$JSON" \
   --header "Content-Type: application/json" \
   "$HOST/spelunking")
#echo $CREATE_RESULT

responseContains '{"okay":true,"id":"' "$CREATE_RESULT"



#if [ $? -eq 0 ] ; then 
#   pass
#else
#   fail "could not find '$EXPECTED' in $URL"
#fi
