FROM python:3.12-alpine
WORKDIR /app
COPY ./app.py .

RUN echo "NAME=$NAME"
# echo ở đây sẽ không in ra gì vì đang ở build time, chưa có biến môi trường NAME

CMD echo ; \
    echo "NAME=$NAME"; \
    # echo ở đây sẽ in ra biến môi trường NAME vì đang ở run time; \
    python ./app.py