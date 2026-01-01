SH=$(cd `dirname $0` && pwd)

cd $SH
docker compose --progress=plain build #--no-cache

echo
docker compose --progress=plain up --force-recreate -d --remove-orphans
#      compose                  up --force-recreate to always create container ie reload envvar ifany

echo
cat <<EOT
--- whatsnext cmd
docker logs flask_apiapp_c
docker logs flask_apiapp_c -f

cd $SH
docker compose logs
docker compose logs -f

curl -sSLf localhost:33300
{}
EOT
