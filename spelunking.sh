#!/bin/sh

function pass {
   tput setf 2
   echo "[PASS] $0"
   tput sgr0
   exit 0
}

function fail {
   tput setf 4
   echo "[FAIL] $0: $1" 
   tput sgr0
   exit 2
}

function responseContains {
   EXPECTED=$1
   ACTUAL=$2
   if [[ "$ACTUAL" != *"$EXPECTED"* ]] ; then
      fail "'$EXPECTED' was not found in '$ACTUAL'"
   fi
   pass 
}

function responseEquals {
   EXPECTED=$1
   ACTUAL=$2
   if [ $ACTUAL == $EXPECTED ] ; then
      pass
   fi
   fail "'$EXPECTED' was not equal to '$ACTUAL'"
}
