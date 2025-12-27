SH=`cd $(dirname $0) && pwd`
cd $SH

docker build -t doansontung/hello-world .

docker image tag hello-world doansontung/hello-world

docker push doansontung/hello-world:latest
