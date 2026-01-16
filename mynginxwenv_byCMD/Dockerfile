FROM nginx:alpine-slim

#CMD LUU Y khithaydoi CMD de nginx van phucvu web server thi goi lai entrypoint cu~ eg > nginx -g 'daemon off;' ie > docker inspect nginx:alpine-slim --format '{{.Config.Cmd}}'
CMD echo "Hi $NAME!" > /usr/share/nginx/html/'index.html';\
    _='goi entrypoint cua nginx'; \
    nginx -g 'daemon off;'
#   nginx -g 'daemon off;'   # ref > docker inspect nginx:alpine-slim --format '{{.Config.Cmd}}'
