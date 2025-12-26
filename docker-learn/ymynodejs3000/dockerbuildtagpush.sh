    SH=`cd $(dirname $0) && pwd`
cd $SH 

docker build . -t mynodejs3000 --platform linux/amd64,linux/arm64

docker tag        mynodejs3000 namgivu/mynodejs3000
docker push                    namgivu/mynodejs3000

