#! /usr/bin/env bash

# Make a csr for a server. This is for doing it manually; k8s can do this for us.
openssl req -new -sha256 -nodes -out server.csr -newkey rsa:2048 -keyout server.key -config <( cat server.csr.cnf )

