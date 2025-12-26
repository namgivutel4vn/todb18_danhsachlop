SH=$(cd `dirname $0` && pwd)

set -e  # halt if err

#      build context                -f      Dockerfile   -t image
docker build "$SH/../flask_apiapp"  -f "$SH/Dockerfile"  -t flask-apiapp-i  --progress plain
docker run                                                  flask-apiapp-i
