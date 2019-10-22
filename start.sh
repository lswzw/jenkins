#!/bin/bash
kubectl apply -f ns.yaml
kubectl apply -f jenkins-pv-pvc.yaml
kubectl create -f jenkins-rbac.yaml
kubectl apply -f jenkins-deployment.yaml
kubectl apply -f jenkins-service.yaml
