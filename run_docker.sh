#!/usr/bin/env bash

# Build image
docker build --tag=project2 .

# List docker images
docker image ls

# Run flask app
docker run -p 8000:80 project2