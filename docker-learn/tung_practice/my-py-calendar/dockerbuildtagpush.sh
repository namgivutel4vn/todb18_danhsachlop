SH=`cd $(dirname $0) && pwd`
cd $SH

docker build -t my-py-calendar .

docker tag my-py-calendar doansontung/my-py-calendar

docker push doansontung/my-py-calendar