#! /usr/bin/env bash

openssl rsa -in ../cacert/our-ca.key -out temp-decrypted.key

kubectl create secret tls loaded-ca-key-pair \
   --cert=../cacert/our-ca.crt \
   --key=temp-decrypted.key \
   --namespace=default

rm temp-decrypted.key


