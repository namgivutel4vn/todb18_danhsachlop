set -e
    SH=`cd $(dirname $0) && pwd`
cd $SH
docker build                  -t mynginxwenv-i .  --no-cache  --build-arg name_a_build_arg='Abb'
docker run -e NAME="$1" -p880:80 mynginxwenv-i
