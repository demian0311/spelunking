# Spelunking

## Quick Start
To run all of the scripts do this:

      demian@shiv ~/code/spelunking>./run
      ==========================================
      = SMOKE TESTS                            =
      ==========================================
      [PASS] ./01_neidetcher_com_connectivity.sh
      [PASS] ./02_neidetcher_port_80.sh
      [PASS] ./03_neidetcher_feed.sh
      [PASS] ./04_couchdb.sh
      [PASS] ./05_webservicex_net_uszip.sh
      ==========================================
      demian@shiv ~/code/spelunking>

Or you can just run one.  

      demian@shiv ~/code/spelunking>./01_neidetcher_com_connectivity.sh
      [PASS] ./01_neidetcher_com_connectivity.sh


## Description
A handful of simple scripts that show how you might hit
HTTP servers with commandline scripts.

Even though it's good architecture to use N-tiered 
solutions it is still important to be able to validate
that you can talk to the services you need for your 
application.

These scripts show a progression of validating that you can
get to a host, making sure the port is warm on the far
end and then interacting with an HTTP service using
wget and cURL.

Although this focuses on HTTP, I use these concepts to 
validate non-HTTP services are alive (albeit at a 
minimal level) by using nmap to see if the port is up.

## CouchDB
A running CouchDB instance is a great stand-in to replicate
a ReST-ful service.  After installing, this is what I did to 
create the database and the admin user.

      #!/bin/sh
      curl -X PUT http://127.0.0.1:5984/spelunking
      curl -X PUT http://127.0.0.1:5984/_config/admins/demian -d '"secret"'


