     SH='cd $(dirname $0) && pwd' 
cd $SH

docker build . -t mynodejs3000 --platform linux/amd64,linux/arm64

docker tag 	  mynodejs3000 locphu2020/mynodejs3000
#      tag        tenfile  tencuaban/xx

docker push               locphu2020/mynodejs3000
