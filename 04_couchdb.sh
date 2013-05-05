#!/bin/sh
. spelunking.sh

HOST='http://127.0.0.1:5984/'
JSON='{
   "message": "hello world"
   }'

CREATE_RESULT=$(curl -k -s \
   -u 'demian:secret' \
   -X POST -d "$JSON" \
   --header "Content-Type: application/json" \
   "$HOST/spelunking")
echo $CREATE_RESULT

responseContains '{"ok":true,"id":"' "$CREATE_RESULT"
