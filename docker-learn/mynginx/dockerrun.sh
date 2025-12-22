SH=`cd $(dirname $0) && pwd`
cd $SH

cp ./index.html.origin ./v/index.html

docker compose -p tung up -d --force-recreate --remove-orphans