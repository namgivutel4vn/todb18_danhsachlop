FROM python:3.12-alpine

RUN python3 -m pip install --upgrade pip uv

WORKDIR                /app
COPY ./.python-version .
COPY ./pyproject.toml  .
COPY ./uv.lock         .
#    . context         . WORKDIR

RUN uv sync

COPY ./src/app.py ./src/app.py
#    . context    . WORKDIR

EXPOSE 5000

#CMD pwd;ls -lah;pwd
CMD uv run  python3 ./src/app.py
