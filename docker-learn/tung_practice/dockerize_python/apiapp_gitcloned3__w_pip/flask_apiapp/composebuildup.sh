SH=$(cd `dirname $0` && pwd)
cd $SH

docker compose --progress=plain build --no-cache

echo
docker compose --progress=plain up --force-recreate -d --remove-orphans

echo
cat << EOF
--- what to do next ---
docker logs flask-apiapp-c
docker logs flask-apiapp-c -f

cd $SH
docker compose logs
docker compose logs -f

curl -sSLf localhost:33300
{}
EOF