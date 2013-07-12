#!/bin/sh
. ./spelunking

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

# see the README.md for instructions on how to
# set up couchdb after you have it installed.
