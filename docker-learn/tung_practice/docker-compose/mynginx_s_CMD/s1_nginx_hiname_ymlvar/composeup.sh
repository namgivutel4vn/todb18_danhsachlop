SH=`cd $(dirname $0) && pwd`
cd $SH

NAME=${1:-${n:-'todb18 2025'}} \
docker compose -p todb18 up -d --force-recreate

cat<<EOT
--- what's next cmd
docker logs    todb18_s1-mynginx-c-1
docker logs -f todb18_s1-mynginx-c-1

cd $SH
docker compose logs
docker compose logs -f
EOT