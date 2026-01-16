    SH=`cd $(dirname $0) && pwd`
cd $SH

docker run \
  -p8816:80 \
  -v './v'/usr/share/nginx/html/:/usr/share/nginx/html/ \
  nginx:alpine-slim
