SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)  # lay SH thumuc chua tep .sh nay
cd $SH

set -e  # halted on any err

#      build                         ../src thoi cung dc VOI LUU Y la da cd $SH
docker build -t hinamewenv-v2-i "$SH/../src"   -f "$SH/../zdocker/Dockerfile"  --progress=plain --no-cache
#      build                    context folder

echo
docker run -e NAME="${1:-${n:-Tel4vn TODB18 2025}}" hinamewenv-v2-i
