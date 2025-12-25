SH=`cd $(dirname $0) && pwd`
cd $SH

docker run -d \
    -p 881:80 \
    -v ./v/:/usr/share/nginx/html/ \
    nginx:alpine-slim