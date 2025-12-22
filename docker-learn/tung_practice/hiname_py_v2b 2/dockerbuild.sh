#!/user/bin/env bash
SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)
cd $SH

set -e # halt on any error

docker build -t hiname-py-v2b-i ./pyapp2_vn -f "$SH/Dockerfile"
#                              . context folder
#                              . app source code folder