#!/bin/sh
kubectl apply -f /root/jenkins/namespace.yaml
kubectl apply -f /root/jenkins/secret.yaml
kubectl apply -f /root/jenkins/deployment.yaml
kubectl apply -f /root/jenkins/service.yaml
