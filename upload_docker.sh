#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
#docker build --tag=flasksklearn .


dockerpath="wadqq/project2"

# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag project2 $dockerpath

# Push Image
docker image push $dockerpath 