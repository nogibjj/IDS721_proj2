#!/usr/bin/env bash

dockerpath="wadqq/project2"

# Run in Docker Hub container with kubernetes
kubectl run project2\
    --image=$dockerpath\
    --port=80 --labels app=project2

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward project2 8000:80


