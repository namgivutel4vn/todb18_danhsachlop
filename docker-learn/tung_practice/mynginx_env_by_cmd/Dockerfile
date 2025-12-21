FROM nginx:alpine-slim

# Lưu ý khi thay đổi CMD để nginx vẫn phục vụ thì gọi lại entrypoint cũ e.g. > nginx -g 'daemon off;'
CMD echo "Hi $NAME!" > /usr/share/nginx/html/index.html; \
    # Check bằng lệnh docker inspect nginx:alpine-slim --format '{{.Config.Cmd}}'
    nginx -g 'daemon off;'