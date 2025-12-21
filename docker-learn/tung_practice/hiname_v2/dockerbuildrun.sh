#!/user/bin/env bash
SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)
cd $SH

docker build -t hiname-v2-i .

docker run -e NAME="$1" hiname-v2-i

docker container prune -f