set -e
    SH=`cd $(dirname $0) && pwd`
cd $SH
docker build     -t mynginxwenv-i .  --no-cache  --build-arg name_a_build_arg="$1"
docker run -p880:80 mynginxwenv-i

_='
--- whatsnext cmd
curl localhost:880
'
