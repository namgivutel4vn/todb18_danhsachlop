SH=$(cd `dirname $0` && pwd)

cd $SH
docker compose --progress=plain down --remove-orphans
