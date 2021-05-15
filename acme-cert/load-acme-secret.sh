#! /usr/bin/env bash

# Loader for your AWS account data.

read -p "Enter the AWS Key ID for the key pair:  " -r
AWS_KEY_ID=$REPLY

read -p "Enter the AWS secret key: " -r -s
AWS_SECRET=$REPLY

kubectl delete secret staging-route53-credentials >/dev/null

# The AWS secret is set by the Route53 support to at
# the key "secret-access-key" for the issuers to get
# at the key. I put the public key here as well
# to make the k8s yaml a bit more generic.
kubectl create secret generic staging-route53-credentials \
  --from-literal secret-access-key="$AWS_SECRET" \
  --from-literal aws-key-id=$AWS_KEY_ID
