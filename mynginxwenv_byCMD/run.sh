set -e
    SH=`cd $(dirname $0) && pwd`
cd $SH
docker build                  -t mynginxwenv-i .  --no-cache
docker run -e NAME="$1" -p880:80 mynginxwenv-i

_='
--- whatsnext cmd
curl localhost:880
'
