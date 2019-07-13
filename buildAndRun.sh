#!/bin/bash

docker build -t pipeline -f Dockerfile.java .
docker run \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --env GITHUB_URL=<repository url> \
  --env DOCKER_USERNAME=<user> \
  --env DOCKER_PASSWORD=<password> \
  pipeline \
  /stages/00_run.sh
