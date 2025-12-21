#!/user/bin/env bash
SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)
cd $SH

set -e

docker build -t mynginx-env-i . --no-cache --build-arg name_a_build_arg="${1:-TODB18 2025}"

docker run -e NAME=$1 -p 880:80 mynginx-env-i