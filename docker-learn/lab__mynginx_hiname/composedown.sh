    SH=`cd $(dirname $0) && pwd`
cd $SH
docker compose -p nam down --remove-orphans
