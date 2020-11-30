#!/bin/bash

# ./webhook-create-signed-cert.sh
./create-webhook-cert.sh
kubectl get secret lxcfs-admission-webhook-certs

# kubectl create ns lxcfs
kubectl -n lxcfs create -f deployment.yaml
kubectl -n lxcfs create -f service.yaml
cat ./mutatingwebhook.yaml | ./webhook-patch-ca-bundle.sh > mutatingwebhook-ca-bundle.yaml
kubectl -n lxcfs create -f mutatingwebhook-ca-bundle.yaml

