#!/bin/bash
SH=$(cd $(dirname $0); pwd)

cd $SH
docker compose --progress=plain build #--no-cache

echo
set -e  # ensure halted if compose up cmd not healthy result ;NOTE have setup c_wait4healthy in yml
docker compose --progress=plain up --force-recreate -d  --remove-orphans
#      compose                  up --force-recreate to always create container ie reload envvar ifany
