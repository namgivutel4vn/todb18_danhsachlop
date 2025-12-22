SH=`cd $(dirname $0) && pwd`
cd $SH

cp ./index.html.origin ./v/index.html

NAME=${1:-${n}}

sed -i '' "s/\${NAME}/$NAME/g" ./v/index.html



docker compose -p tung up -d --force-recreate --remove-orphans