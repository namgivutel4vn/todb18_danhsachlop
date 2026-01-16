    SH=`cd $(dirname $0) && pwd`
cd $SH

cat<<EOT
KHONG DUOC
docker run \
  -p883:80 \
  -v ./'index.html':/usr/share/nginx/html/'index.html' \
  nginx:alpine-slim
EOT
