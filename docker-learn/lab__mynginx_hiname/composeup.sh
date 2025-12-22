    SH=`cd $(dirname $0) && pwd`
cd $SH

NAME=${1:-${n}}

# cook hi $NAME!
cp  ./index.html.origin ./v/index.html
sed -i'' "s/Welcome to nginx!/Hi $NAME!/g" $SH/v/index.html

# up
docker compose -p nam up -d --force-recreate --remove-orphans
