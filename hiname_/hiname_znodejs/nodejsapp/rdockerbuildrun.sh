SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)  # lay SH thumuc chua tep .sh nay
cd $SH

set -e  # halted on any err

# build
docker build . -t hianme-nodejs-i  --progress=plain  --no-cache

# run
echo
docker run hianme-nodejs-i
