#!/bin/bash

docker build -t pipeline -f Dockerfile.java .
docker run \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --env GITHUB_URL=https://github.com/fermt18/sample-java.git \
  --env DOCKER_USERNAME=fermt18 \
  --env DOCKER_PASSWORD=Fer15034 \
  pipeline \
  /stages/00_run.sh