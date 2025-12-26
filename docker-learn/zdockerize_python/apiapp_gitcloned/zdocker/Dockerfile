FROM python:3.12-alpine

RUN python3 -m pip install --upgrade pip uv

WORKDIR                /app
COPY ./.python-version .
COPY ./pyproject.toml  .
COPY ./uv.lock         .
#    . context         . WORKDIR

# RUN uv sync

CMD pwd;ls -lah;pwd
