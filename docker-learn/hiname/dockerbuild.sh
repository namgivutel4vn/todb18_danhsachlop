SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)
cd $SH
docker build -t hiname_i .
