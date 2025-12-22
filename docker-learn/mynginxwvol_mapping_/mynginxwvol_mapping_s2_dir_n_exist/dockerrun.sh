    SH=`cd $(dirname $0) && pwd`
cd $SH

docker run \
  -p882:80 \
  -v ./v/:/usr/share/nginx/html/ \
  nginx:alpine-slim

comment=cat<<EOT
khi thumuc ko tontai thi se tao thumuc rong va thong voi c
EOT
