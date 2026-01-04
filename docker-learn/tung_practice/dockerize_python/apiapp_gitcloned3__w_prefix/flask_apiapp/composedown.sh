SH=$(cd `dirname $0` && pwd)

cd $SH
docker compose -p myprefix down --remove-orphans