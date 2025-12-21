#!/user/bin/env bash
SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)
cd $SH

docker build -t hiname-py-i .