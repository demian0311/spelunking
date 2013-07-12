#!/bin/sh
. ./spelunking

ACTUAL=$(ping -c 1 'neidetcher.com' 2>&1)
evaluateLastStatus 'could not connect'
