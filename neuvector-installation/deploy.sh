#!/bin/bash
kubectl create -f 01-namespace.yaml
kubectl create -f 02-secret.yaml

# Deploy the operator
kubectl create -f 03-neuvector-subscription.yaml
