#!/bin/bash

# ./webhook-create-signed-cert.sh
./create-webhook-cert.sh
kubectl  get secret lxcfs-admission-webhook-certs

# kubectl create ns lxcfs
kubectl  create -f deployment.yaml
kubectl  create -f service.yaml
cat ./mutatingwebhook.yaml | ./webhook-patch-ca-bundle.sh > mutatingwebhook-ca-bundle.yaml
kubectl  create -f mutatingwebhook-ca-bundle.yaml

