    SH=$(cd `dirname $0` && pwd)
cd $SH

set -e  # halted onanyerr

# build
#      build                        . context folder ; . o tep .sh nay la NOI GOI chay tep sh nay, KO PHAI thumuc chua tep nay
docker build -t hinamewenv-nodejs-i .  --no-cache --progress=plain
#                                      --no-cache --progress=plain TUY CHON de de~ hoc cho nguoimoi

# run
echo
docker run -e NAME="${1:-${n:-TODB18 fr nodejs}}" hinamewenv-nodejs-i
# Hi $NAME !
