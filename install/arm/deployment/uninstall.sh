#!/bin/bash

kubectl -n lxcfs delete -f mutatingwebhook-ca-bundle.yaml
kubectl -n lxcfs delete -f service.yaml
kubectl -n lxcfs delete -f deployment.yaml
kubectl -n lxcfs delete secret lxcfs-admission-webhook-certs

