#!/user/bin/env bash
SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)
cd $SH

set -e # halt on any error

docker build -t hiname-env-nodejs . --no-cache --progress=plain

docker run -e NAME="${1:-${n:-TODB18 for nodejs}}" hiname-env-nodejs