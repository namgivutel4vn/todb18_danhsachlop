FROM python:3.12-alpine

RUN python3 -m pip install --upgrade pip uv

WORKDIR                /app
COPY ./pyproject.toml  .
RUN uv sync

COPY ./src/app.py    ./src/app.py

EXPOSE 5000
CMD uv run  python3 ./src/app.py
