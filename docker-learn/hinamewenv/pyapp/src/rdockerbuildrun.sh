SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)  # lay SH thumuc chua tep .sh nay
cd $SH

set -e  # halted on any err

# build
#      build
docker build -t hinamewenv-i .

# run
echo
docker run hinamewenv-i
