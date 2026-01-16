FROM python:3.12-alpine
WORKDIR       /app
COPY ./app.py .

RUN echo "in khi RUN NAME=$NAME"; \
    echo oday RUN thi KO THAY bien NAME vi dang la docker build

CMD echo "in khi CMD NAME=$NAME"; \
    echo 'oday CMD thi se THAY bien NAME vi dang la docker run'; \
    python    ./app.py
