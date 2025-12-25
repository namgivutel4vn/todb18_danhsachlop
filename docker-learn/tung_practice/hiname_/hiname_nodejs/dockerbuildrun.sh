#!/user/bin/env bash
SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)
cd $SH

sh dockerbuild.sh
sh dockerrun.sh

docker container prune -f