#!/bin/bash

kubectl delete -f mutatingwebhook-ca-bundle.yaml
kubectl delete -f service.yaml
kubectl delete -f deployment.yaml
kubectl delete secret lxcfs-admission-webhook-certs