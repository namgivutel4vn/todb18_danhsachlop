    SH=`cd $(dirname $0) && pwd`
cd $SH

docker run \
  -p880:80 \
  -v ./'index.html':/usr/share/nginx/html/'index.html' \
  nginx:alpine-slim
