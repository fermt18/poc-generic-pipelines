# Generic Pipelines with Docker


## Getting Started

Compiles, tests and deploys an application conditionally depending on the pipeline.json located in the application repository. The whole pipeline runs within a container so there is Docker installed within Docker (docker.sock).

### Run:

```
docker build -t pipeline -f Dockerfile.java .
```
```
docker run ^
  -v /var/run/docker.sock:/var/run/docker.sock ^
  --env GITHUB_URL=<application repository> ^
  --env DOCKER_USERNAME=<docker hub username> ^
  --env DOCKER_PASSWORD=<docker hub password> ^
  pipeline ^
  /stages/00_run.sh
```

### Environment

All environmental variables needed shall be set in the Docker "run" command to be used within the docker container.

```
GITHUB_URL=<application repository>
DOCKER_USERNAME=<docker hub username>
DOCKER_PASSWORD=<docker hub password>
```
