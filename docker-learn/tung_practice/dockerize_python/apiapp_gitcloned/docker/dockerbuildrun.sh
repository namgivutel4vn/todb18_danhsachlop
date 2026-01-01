SH=$(cd `dirname $0` && pwd)

docker rm -f apiapp-c

set -e # halt if err

docker build "$SH/../flask_apiapp" -f "$SH/Dockerfile" -t flask-apiapp-i --platform linux/amd64 --load

docker run -d --name apiapp-c -p 22333:5000 flask-apiapp-i

echo
cat << EOF
--- what to do next ---
curl -sSLf localhost:22333
{}
EOF