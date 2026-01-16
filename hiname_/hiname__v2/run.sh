set -e
    SH=`cd $(dirname $0) && pwd`
cd $SH
docker build         -t hinamev2-i .  --no-cache
docker run -e NAME="$1" hinamev2-i
