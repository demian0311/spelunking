#!/bin/sh
. spelunking.sh

HOST='http://127.0.0.1:5984/'
JSON='{
   "message": "hello world"
   }'

ACTUAL=$(curl -k -s \
   -u 'demian:secret' \
   -X POST -d "$JSON" \
   --header "Content-Type: application/json" \
   "$HOST/spelunking")

responseContains '{"ok":true,"id":"' "$ACTUAL"
