SH=`cd $(dirname $0) && pwd`
cd $SH

docker run -d \
    -p 882:80 \
    -v mynginx-v:/usr/share/nginx/html/ \
    --name mynginx-volname-c \
    nginx:alpine-slim