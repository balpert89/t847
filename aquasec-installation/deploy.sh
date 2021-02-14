#!/bin/bash
kubectl create -f namespace.yaml
kubectl create -f secret.yaml
kubectl create -f cluster-role.yaml
kubectl create -f cluster-role-binding.yaml

# Deploy the Aqua DB
kubectl create -f db-deployment.yaml
kubectl create -f db-service.yaml

# Deploy the enforcer
kubectl create -f aqua-enforcer.yaml

# Deploy the Aqua Server
kubectl create -f server-deployment.yaml
kubectl create -f server-service.yaml

# Deploy the Gateway
kubectl create -f gateway-deployment.yaml
kubectl create -f gateway-service.yaml

