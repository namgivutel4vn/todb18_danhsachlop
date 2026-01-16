SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)  # lay SH thumuc chua tep .sh nay
cd $SH

# build
docker build -t hiname-py-v2-i .
#      build                   . context folder
#      build                   . app source code folder

# run
echo
docker run hiname-py-v2-i
