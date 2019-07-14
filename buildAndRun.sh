#!/bin/bash

docker build -t pipeline -f Dockerfile.python .
docker run \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --env GITHUB_URL=https://github.com/fermt18/pi-gpio-server.git \
  --env DOCKER_USERNAME=fermt18 \
  --env DOCKER_PASSWORD=Fer_2_30068 \
  pipeline \
  /stages/00_run.sh
