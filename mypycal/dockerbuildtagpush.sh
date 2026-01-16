     SH='cd $(dirname $0) && pwd' 
cd $SH

docker build . -t mypycal --platform linux/amd64,linux/arm64

docker tag 	  mypycal locphu2020/mypycal
#      tag        tenfile  tencuaban/xx

docker push               locphu2020/mypycal
