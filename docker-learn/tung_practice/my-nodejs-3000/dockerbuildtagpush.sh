SH=`cd $(dirname $0) && pwd`
cd $SH

docker build -t my-nodejs-3000 .

docker tag my-nodejs-3000 doansontung/my-nodejs-3000

docker push doansontung/my-nodejs-3000