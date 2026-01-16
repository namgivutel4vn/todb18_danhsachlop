SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)  # lay SH thumuc chua tep .sh nay
cd $SH

set -e  # halted on any err

# build
#      build                                  -f      Dockerfile macdinh se o cung thumuc context folder -> chi vitri Dockerfile khi no o khac cho
docker build -t hiname-py-v2b-i ./pyapp2_vn/  -f "$SH/Dockerfile"
#      build                    . context folder
#      build                    . app source code folder

# run
echo
docker run hiname-py-v2b-i
