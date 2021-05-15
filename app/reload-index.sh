#! /usr/bin/env bash

# Wrap index.html up in ConfigMap format.
kubectl create cm web-data \
  --from-file index.html=./index.html \
  --dry-run=client \
  -o yaml >jumbo-page.yaml
