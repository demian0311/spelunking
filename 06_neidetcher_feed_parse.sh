#!/bin/sh
. ./spelunking

URL='http://feeds.feedburner.com/neidetcher'
ATOM_NS="http://www.w3.org/2005/Atom" 
XPATH="//atom:feed/atom:author/atom:name"

FEED_XML=$(wget -qO- $URL)
AUTHOR_NAME=$(echo $FEED_XML | xml sel -N atom="$ATOM_NS" -t -m "$XPATH" -v "." -n)

if [ "$AUTHOR_NAME" == "Demian Neidetcher" ]; then pass
else fail
fi

# this uses xmlstarlet {brew|apt-get} install xmlstarlet
# xmlstarlet cuts you no slack on namespaces
# http://xmlstar.sourceforge.net/doc/UG/ch05s01.html
