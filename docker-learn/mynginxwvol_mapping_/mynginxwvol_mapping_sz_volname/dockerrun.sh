    SH=`cd $(dirname $0) && pwd`
cd $SH

docker run \
  -p887:80 \
  -v mynginx-v:/usr/share/nginx/html/ \
  --name mynginx-volname-c \
  nginx:alpine-slim

note=cat<<EOT
CHU Y mynginx-v KO phai la 1 duong dan -> docker se hieu no a ten vol
ten vol ie duongdan cua thongthumuc do docker tu quanly
ten vol                                docker tu quanly thuong o /var/lib/docker/volumes
ten vol                                docker tu quanly thuong o /var/lib/docker/volumes/mynginx-v/_data  ref $ docker inspect mynginx-volname-c | grep volume | grep Source
ten vol                                docker tu quanly thuong o /var/lib/docker/volumes/mynginx-v/_data  ref $ docker volume inspect  mynginx-v | grep Mountpoint
ten vol                                docker tu quanly thuong o /var/lib/docker/volumes/{containername}}/_data
EOT
