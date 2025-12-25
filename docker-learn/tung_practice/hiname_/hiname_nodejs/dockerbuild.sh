#!/user/bin/env bash
SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)
cd $SH

set -e # halt on any error

docker build -t hiname-nodejs-i .
#                              . context folder
#                              . app source code folder