#!/bin/bash
set -e
kubectl apply -f k8s/00-namespace.yaml
kubectl apply -f k8s/configmap-db-init.yaml
kubectl apply -f k8s/mariadb-deployment.yaml
kubectl apply -f k8s/mariadb-service.yaml
kubectl apply -f k8s/web-deployment.yaml
kubectl apply -f k8s/web-service.yaml
kubectl apply -f k8s/hpa-web.yaml
