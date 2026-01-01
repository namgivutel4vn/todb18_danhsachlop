SH=$(cd `dirname $0` && pwd)

cd $SH
docker compose build

echo
set -e
docker compose -p myprefix up --force-recreate -d --remove-orphans

echo
cat <<EOT
curl -sSLf localhost:33300
{}
EOT
