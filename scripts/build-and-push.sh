#!/bin/bash
ACR=$1
TAG=$2
if [ -z "$ACR" ] || [ -z "$TAG" ]; then
  echo "Usage: $0 <acr-login-server> <tag>"
  exit 1
fi
IMAGE="$ACR/ecom-web:$TAG"
docker build -f docker/Dockerfile.web -t $IMAGE .
az acr login --name $(echo $ACR | cut -d'.' -f1)
docker push $IMAGE
