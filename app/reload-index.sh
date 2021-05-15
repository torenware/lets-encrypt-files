#! /usr/bin/env bash

kubectl create cm web-data \
  --from-file index.html=./index.html \
  --dry-run=client \
  -o yaml >jumbo-page.yaml
