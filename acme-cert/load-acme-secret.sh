#! /usr/bin/env bash

# read -p "Enter the ACME privateKeySecret: " -rs 
# ACME_SECRET=$REPLY

read -p "Enter the ACME AWS secret: " -r -s
AWS_SECRET=$REPLY

kubectl delete secret torensys-issuer-account-key
kubectl delete secret staging-route53-credentials-secret


# kubectl create secret generic torensys-issuer-account-key --from-file tls.key=./acme.key
kubectl create secret generic staging-route53-credentials-secret --from-literal secret-access-key="$AWS_SECRET"


