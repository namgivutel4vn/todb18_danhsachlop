SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)  # lay SH thumuc chua tep .sh nay
cd $SH

set -e  # halted on any err

# build
#      build
docker build -t hinamewenv-i . --progress=plain --no-cache

# run
echo
docker run -e NAME="$1" hinamewenv-i
#      run -e key=val  truyen bien moi truong de CHAY container ; chuy KHONG PHAI de BUILD
