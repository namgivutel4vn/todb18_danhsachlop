#!/user/bin/env bash
SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)
cd $SH

set -e # halt on any error

docker build -t hiname-env-i .

docker run -e NAME="${1:-${n:-Tel4vn TODB18 2025}}" hiname-env-i

docker container prune -f