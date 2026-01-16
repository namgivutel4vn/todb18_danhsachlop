SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)  # lay SH thumuc chua tep .sh nay
cd $SH

# build
bash $SH/rdockerbuild.sh

# run
docker run hiname-py-i
