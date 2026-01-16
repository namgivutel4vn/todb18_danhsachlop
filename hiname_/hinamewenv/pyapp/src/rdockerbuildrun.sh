SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)  # lay SH thumuc chua tep .sh nay
cd $SH

set -e  # halted on any err

# build
#      build
docker build -t hinamewenv-i . --progress=plain --no-cache

# run
echo
#      run -e key=val  truyen bien moi truong de CHAY container ; chuy KHONG PHAI de BUILD
docker run -e NAME="${1:-${n:-Tel4vn TODB18 2025}}" hinamewenv-i
#                   ${ :-giatri khi bien rong}
