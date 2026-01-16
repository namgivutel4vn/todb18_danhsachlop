SH=`cd $(dirname $0) && pwd`
cd $SH

NAME=${1:-${n:-todb18}}

v="$SH/v"
index_f="$v/usr/share/nginx/html/index.html"
echo "Hi $NAME!" > $index_f

docker compose -p todb18 up -d --force-recreate