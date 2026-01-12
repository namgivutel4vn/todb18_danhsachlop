#!/bin/bash
SH=$(cd $(dirname $0); pwd)

docker compose \
  -f "$SH/docker-compose--image-fr-dockerhub.yml" \
  --progress=plain up --force-recreate -d  --remove-orphans
