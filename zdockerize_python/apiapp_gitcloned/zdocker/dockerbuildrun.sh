SH=$(cd `dirname $0` && pwd)

docker rm -f apiapp-c

set -e  # halt if err

#      build context                -f      Dockerfile   -t image
docker build "$SH/../flask_apiapp"  -f "$SH/Dockerfile"  -t flask-apiapp-i  --progress plain
docker run -p33300:5000 -d --name apiapp-c                  flask-apiapp-i

echo
cat <<EOT
--- whatsnext cmd
curl -sSLf localhost:33300
{}
EOT
