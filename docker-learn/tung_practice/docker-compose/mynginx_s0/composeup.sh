SH=`cd $(dirname $0) && pwd`
cd $SH

docker compose -p todb18 up -d --force-recreate